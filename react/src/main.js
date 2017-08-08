import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

document.addEventListener('DOMContentLoaded', function() {
  let reactElement = document.getElementById('app');
  if (reactElement) {
    ReactDOM.render(
      <H1>This is React</H1>,
      reactElement
    )
  }
});
