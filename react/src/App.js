import React from 'react';
import HikeContainer from './containers/HikeContainer'

const App = props => {
  return(
    <div>
      <h3 className="center-align">Browse Trails</h3>
      <p className="center-align">Click column headings to sort  :  Click the trail name for more info</p>
      <HikeContainer />
    </div>
  )
}

export default App;
