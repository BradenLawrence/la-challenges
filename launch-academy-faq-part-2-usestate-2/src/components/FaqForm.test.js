import React from 'react'
import Enzyme, { mount } from 'enzyme'
import Adapter from 'enzyme-adapter-react-16'
import { act } from 'react-dom/test-utils'
import FaqForm from './FaqForm'
import ErrorList from './ErrorList'

Enzyme.configure({ adapter: new Adapter() })

describe('FaqForm', () => {
  let wrapper
  let fakeAddForm = jest.fn()

  beforeEach(() => {
    wrapper = mount(
      <FaqForm addForm={fakeAddForm}/>
    )
  })

  it('should have an ErrorList', () => {
    expect(wrapper.find(ErrorList).props().errors).toBeDefined()
  })

  it('should have a working question input', () => {
    wrapper.find('input').first().instance().value = 'Howdy'
    expect(wrapper.find('input').first().instance().value).toEqual('Howdy')
  })
})
