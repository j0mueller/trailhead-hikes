import React, { Component } from 'react';

class HikeTile extends Component {
  constructor(props) {
    super(props);
  }

  render () {

    return (
      <div>
        <p> { this.props.name }: { this.props.city} {this.props.state} { this.props.country }</p>
        <p> { this.props.difficulty}, { this.props.distance} mi, { this.props.elevation} ft </p>
        <p> { this.props.description} </p>
      </div>
    )
  }
};

export default HikeTile;
