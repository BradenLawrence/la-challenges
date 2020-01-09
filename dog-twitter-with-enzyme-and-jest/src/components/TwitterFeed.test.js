import React from "react"
import Enzyme, { mount } from "enzyme"
import { act } from "react-dom/test-utils"
import Adapter from "enzyme-adapter-react-16"

import TwitterFeed from "./TwitterFeed"
import Tweet from "./Tweet"

Enzyme.configure({ adapter: new Adapter() })
// [ ] Initially mount with the selectedTweetId set to null
// [ ] Render a Tweet component
// [ ] Pass down different props to the Tweet component if a corresponding Tweet component is clicked (using act()) and updated.

describe("TwitterFeed", () => {
  let wrapper
  let data = [
    {
      id: 1,
      text: "This doesn't look like Kansas",
      user: {
        name: "Todo",
        profile_image_url:
          "http://images2.fanpop.com/image/quiz/400000/400752_1271413686448_431_300.jpg"
      }
    }
  ]

  beforeEach(() => {
    act(() => {
      wrapper = mount(<TwitterFeed data={data} />)
    })
  })

  it('should start with selectedTweetId set to null', () => {
    expect(wrapper.find(Tweet).props().className).toEqual('')
  })

  it('should render a Tweet component', () => {
    expect(wrapper.find(Tweet)).toBeDefined()
  })

  it('should pass down props to the Tweet component and respond when clicked', () => {
    act(() => {
      wrapper
        .find(Tweet)
        .props()
        .handleClick()
    })
    wrapper.update()
    expect(wrapper.find(Tweet).props().className).toBe('selected')
  })
})
