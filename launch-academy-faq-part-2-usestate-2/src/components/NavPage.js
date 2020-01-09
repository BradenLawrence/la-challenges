import React from 'react'
import { Route, Switch, Link } from 'react-router-dom'

import FAQContainer from './FAQContainer'
import LauncherList from './LauncherList'

const NavPage = props => {
  return(
    <div>
      <div className='top-bar'>
        <div className='top-bar-left'>
          <ul className='dropdown menu' data-dropdown-menu>
            <li className='menu-text'>Launch Academy</li>
            <li><Link to='/'>FAQs</Link></li>
            <li><Link to='/launchers'>Launchers</Link></li>
          </ul>
        </div>
      </div>
      <div className='container'>
        <Switch>
          <Route exact path='/' component={FAQContainer}/>
          <Route exact path='/launchers' component={LauncherList}/>
        </Switch>
      </div>
    </div>
  )
}

export default NavPage
