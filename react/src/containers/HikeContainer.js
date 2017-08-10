import React, { Component } from 'react';
import ReactTable from 'react-table';
import HikeTile from '../components/HikeTile';

class HikeContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      hikes: []
    };
  }

  componentDidMount(){
    fetch('/api/v1/hikes')
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
          error = new Error(errorMessage);
        throw(error);
      }
    }).then(response => response.json()
    ).then(data => {
      this.setState({ hikes: data.hikes})
    }).catch(error => console.error(`Error in fetch: ${error.message}`))
  }

  render () {
    let hikes = this.state.hikes.map(hike => {
      return (
        <HikeTile
        key = {hike.id}
        id = {hike.id}
        name = {hike.name}
        country = {hike.country}
        state = {hike.state}
        city = {hike.city}
        difficulty = {hike.difficulty}
        distance = {hike.distance}
        elevation = {hike.elevation}
        description = {hike.desription}
        />
      )
    })

    const columns = [{
        Header: 'ID',
        accessor: 'id',
        show: false
      }, {
        Header: 'Name',
        accessor: 'name',
        minWidth: 150,
        Cell: props => <a href={`/hikes/${props.original.id}`}>{props.value}</a>
      }, {
        Header: 'Country',
        accessor: 'country',
        minWidth: 75
      }, {
        Header: 'Distance (mi)',
        accessor: 'distance',
        minWidth: 50,
        Cell: props => <span className='number'>{props.value}</span>
      }, {
        Header: 'Elevation Gain (ft)',
        accessor: 'elevation',
        minWidth: 70,
        Cell: props => <span className='number'>{props.value}</span>
      }, {
        Header: 'Difficulty',
        accessor: 'difficulty',
        minWidth: 75
      }]


    let table = <ReactTable
                  data={this.state.hikes}
                  columns={columns}
                />

    return (
      <div className="table-div">
        {table}
      </div>
    )
  }
}

export default HikeContainer;
