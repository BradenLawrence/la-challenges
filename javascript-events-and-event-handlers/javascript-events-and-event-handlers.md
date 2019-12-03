So far, we've gotten to talk about dynamically changing the DOM, or Document Object Model, using JavaScript. We were able to target specific elements on the page by using code such as `document.getElementById` and `document.getElementsByClassName`, and we changed their `innerHTML`, as well as their styling or attributes. We're now going to explore how we can create a more interactive experience for our users using **Event-Driven programming**.

## Getting Started

```no-highlight    
et get javascript-events-and-event-handlers
cd javascript-events-and-event-handlers
open index.html
```

## Learning Goals

* Discover how to program JavaScript to listen for user interactions with the DOM (events).
* Define callback functions that are triggered when a event takes place.
* Be able to use the `event` to target elements on a page that a user interacts with.

### Action and Reaction

When you write into a form field, tap on a button, or click the "Close Window" button in a pop-up window, the DOM is able to track each of these interactions as `events`. Each `event` is a representation of the user's interaction with the web page. Using **JavaScript**, we can have the browser *listen* for these user events, and then implement DOM manipulation to edit the user experience accordingly.

This is the essence of **Event-Driven Programming**.

### Binding Actions to Events

Using event-driven programming, we have the ability to create a much more interactive experience for our users. We can dynamically change pages as a user navigates our site by binding functions to user actions on page elements. This means that we can wait for some event to occur (usually something the user is doing with their keyboard or mouse, but not always), and then we run one of our JavaScript functions to do something in response. We can do this using **event listeners**, via the `addEventListener` function.

First, we're going to want to target the specific text on our page that we want to work with:

```javascript
let text = document.getElementById('changing-color-text')
```

Then, we want to add our event listener to this text. For practice, you can either run this in your web console or add it to the provided `main.js` file.

```javascript
text.addEventListener('click', (event) => {
  // this line lists the available colors in an array named colors
  let colors = ['Aqua', 'Blue', 'Orange', 'Green', 'Red', 'LightSteelBlue']
  // this line uses the random method to select an index from the colors list and set it to the variable index
  let index = Math.floor(Math.random() * colors.length)
  // this line sets the variable color to whichever index was randomly set on the line above this one
  let color = colors[index]
  // this line says the color style for the targeted event in this function is now set to the color defined on the line above this one (event.target.style is comprised of keywords in JavaScript)
  event.target.style.color = color
});
```

`.addEventListener` is a built in method that we can call on any DOM element. The arguments to `addEventListener` are the **type** of event we want to listen
for (a `'click'` event in this case), and a callback function to execute when that event is detected on that element. This is the JavaScript equivalent of saying, "When a user clicks the words 'Click Here to Magically Change Colors', change the font color randomly."

Check out this [list](https://developer.mozilla.org/en-US/docs/Web/Events) of all the events you can bind to your functions! This is a wonderful reference when trying to create a particular user experience.

### Refactoring our Callback Function

We have defined an **anonymous function**, and given it as an argument to
`addEventListener`. We can make our code more reusable by setting our anonymous arrow function equal to a variable for reuse:

```javascript
let changeFontColor = (event) => {
  let colors = ['Aqua', 'Blue', 'Orange', 'Green', 'Red', 'LightSteelBlue']
  let index = Math.floor(Math.random() * colors.length)
  let color = colors[index]

  event.target.style.color = color
  // Note that some older versions of IE e.g. 6-8 may not support event.target, so we may decide to use event.srcElement.style.color instead.
}

text.addEventListener('click', changeFontColor)
```

We can see that the `changeFontColor` is a **callback function** that is invoked when a user clicks on this element that we assigned the event listener to. `event` refers to the representation of the interaction of a `click` on this element. When using event listeners, *our callback function automatically receives an event object as an argument*. This is very useful, as we ultimately end up using the `event` itself to help us target and change the elements color.

*Trying putting a `debugger` in your function before clicking on the element, and inspecting the `event` object via your console. You'll find that the `event` can help us refer to element that was being listened to, and retrieve or manipulate properties of that element!*

In this case, we also needed to define the function _before_ we reference the name of the function in
`addEventListener`. Having good names for our functions can be beneficial in larger code bases when we have numerous elements with event listeners.

In the example above, or in general we:
* create a callback function, that will ultimately change the color of element on the page.
* pass in the `event` object to that function.
* use the `event` object to target the element our event listener is on.
* add the event listener to our element, passing in the callback function as a second argument.

Try it yourself: open up your JavaScript console (`Command + Option + J`) and run the first two blocks of code above, then click on the text below to watch it change colors!

### Other types of Events

There are many different types of events that we can programmatically listen to using JavaScript, such as the `submit`, `change` events we may use for forms, or even "touch" and "mouse" events that we can use to listen for more unique gestures.

We can also use events listeners to wait for specific events that happen within our app that do not rely on user interaction. For example, suppose we want to have some code execute once the HTML and its dependent resources (such as other JavaScript, CSS, images files) have finished loading. In the following function, we print a message to ourselves in the JavaScript console once the page has finished loading. If we chose, we could expand expand upon this function to showing a pop-up if there is an error loading a resource, or trigger more callback functions that should only begin once all elements are on the page.

```javascript
window.onload = () => {
  console.log('window loaded.')
}
```

### Summary

This has been a brief tour into the power of events and event listeners, which are essentially for creating an interactive user experience on our web pages. We've learned that an `event` is an object that appears when a user interacts with the DOM, that event listeners can be used to trigger callback functions when a user interacts with a specific DOM element in a specific way, and that we can use the returned `event` to help us target specific attributes on the element where our event listener was defined.
