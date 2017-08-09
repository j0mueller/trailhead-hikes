import React from 'react';
import HikeContainer from './containers/HikeContainer'

const App = props => {
  return(
    <div>
      <h3 className="text-center">Browse Trails</h3>
      <p className="text-center">Click column headings to sort  :  Click trail name for more detail</p>
      <HikeContainer />
    </div>
  )
}

export default App;
