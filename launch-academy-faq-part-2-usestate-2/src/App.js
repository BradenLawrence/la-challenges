import React from 'react'
import { BrowserRouter, Route } from 'react-router-dom'

import NavPage from './components/NavPage'

const App = props => {
  return(
    <BrowserRouter>
      <Route path='/' component={NavPage}/>
    </BrowserRouter>
  )
}

export default App
