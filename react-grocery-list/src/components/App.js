import React from 'react';

import GroceryList from './Grocerylist'

let groceryData = [
  {id: 1, name: 'Oranges'},
  {id: 2, name: 'Bananas'},
  {id: 3, name: 'Bread'  }
]



const App = props => {
  return(
    <div>
      <h1>Grocery List</h1>
      <GroceryList list={groceryData}/>
    </div>
  );
};

export default App;
