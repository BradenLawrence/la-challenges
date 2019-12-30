import React from 'react';
import NameForm from './NameForm';
import KarmaButton from './KarmaButton';

const App = (props) => {
  let karmaAlert = event => alert('hi')
  let formChanger = event => {
    event.preventDefault()
    console.log("Form submitted!")
  }

  return (
    <div className="main-div">
      <NameForm trackForm={formChanger}/>
      <KarmaButton karmaClickHandler={karmaAlert}/>
    </div>
  );
}

export default App;
