import React from "react"
import { BrowserRouter } from "react-router-dom"
import Enzyme, { mount } from "enzyme"
import Adapter from "enzyme-adapter-react-16"
Enzyme.configure({ adapter: new Adapter() })

import Elephant from "./Elephant"

let wrapper, onClickMock

beforeEach(() => {
  onClickMock = jest.fn()
  wrapper = mount(
    <BrowserRouter>
      <Elephant
        image="http://fakeurl.com/elephant"
        text="I am an Elephant!"
        onClick={onClickMock}
      />
    </BrowserRouter>
  )
})

describe("Elephant", () => {
  it("should return true", () => {
    expect(true).toEqual(true)
  })
  it("Should have an H1 tag defined", () => {
    expect(wrapper.find('h1').text()).toBe('I am an Elephant!')
  })
  it("Should render an image with specific props", () => {
    expect(wrapper.find('img').props()).toEqual({
      src: "http://fakeurl.com/elephant",
      width: "600",
      height: "400"
    })
  })
  it("Should have an onClick function", () => {
    wrapper.simulate('click')
    expect(onClickMock).toHaveBeenCalled()
  })
})
