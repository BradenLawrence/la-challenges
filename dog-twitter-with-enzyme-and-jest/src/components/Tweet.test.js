import React from "react"
import Enzyme, { mount } from "enzyme"
import { act } from "react-dom/test-utils"
import Adapter from "enzyme-adapter-react-16"

import Tweet from "./Tweet"

Enzyme.configure({ adapter: new Adapter() })


describe("Tweet", () => {
  let fakeHandleClick = jest.fn()
  let wrapper
  let data = {
    id: 1,
    text: "This doesn't look like Kansas",
    user: {
      name: "Todo",
      profile_image_url:
        "http://images2.fanpop.com/image/quiz/400000/400752_1271413686448_431_300.jpg"
    }
  }
  beforeEach(() => {
    wrapper = mount(
      <Tweet
        key="1"
        tweet={data}
        handleClick={fakeHandleClick}
        className=""
      />
    )
  })

  it('should render with the provided tweet text', () => {
    expect(wrapper.find('p').text()).toBe("This doesn't look like Kansas")
  })

  it('should render with the provided tweet username', () => {
    expect(wrapper.find('span').text()).toBe("Todo")
  })

  it('should render with the provided image', () => {
    expect(wrapper.find('img').props()["src"]).toBe("http://images2.fanpop.com/image/quiz/400000/400752_1271413686448_431_300.jpg")
  })
})
