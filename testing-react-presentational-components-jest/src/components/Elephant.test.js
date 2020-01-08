import React from "react"
import Enzyme, { mount } from "enzyme"
import Adapter from "enzyme-adapter-react-16"
Enzyme.configure({ adapter: new Adapter() })

import Elephant from "./Elephant"

let wrapper

beforeEach(() => {
  wrapper = mount(
    <Elephant image="http://fakeurl.com/elephant" text="I am an Elephant!" />
  )
})

describe("Elephant", () => {
  it("should return true", () => {
    expect(true).toEqual(true)
  })
  it("Should have an H1 tag defined", () => {
    expect(wrapper.find('h1').text()).toBe('I am an Elephant!')
  })

})
