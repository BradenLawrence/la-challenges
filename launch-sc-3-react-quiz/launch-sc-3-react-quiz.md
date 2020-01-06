You've been tasked with making a quiz application in React!

## Setup

From your challenges directory, run the following:

```no-highlight
et get launch-sc-3-react-quiz
cd launch-sc-3-react-quiz
bundle install
bundle exec ruby server.rb
```

Then, in another terminal tab, run:

```no-highlight
yarn install
yarn run start
```

If you go to [localhost:4567][localhost-4567], there will be nothing on the page except "React Quiz!", and there should be no errors in your console.

## Meets Expectations Requirements

**NOTE**: You are not expected to replicate the answer order shown in the wireframes below! That is, don't worry about reordering the answers so that `React` is first, `Ember` is second, etc. -- display them in whatever order is easiest.

1. Using React and the data supplied in `react/src/constants/data.js`, render a static page displaying the question and its possible answers. **You may not modify the data in `data.js`**.
   - On the initial render, the page should not display either 'Correct!' or 'Incorrect' ![React Quiz 1][react-quiz-1]
2. Clicking on a correct answer updates the page to display `Correct!` below the answers. ![React Quiz 2][react-quiz-2]
3. Clicking on an incorrect answer updates the page to display 'Incorrect' below the answers. ![React Quiz 3][react-quiz-3]
4. Once a button is selected, the button should change color. Check out `/public/home.css` to see if there are any provided classes to help you out!

### Tips

- Make an outline or plan for how you want to construct your app before beginning.
- We encourage you to first write the code necessary to make the page _look_ the way it is supposed, and then add the behavior and functionality of the page after that.
- Read your errors carefully. They will often point you directly to the offending piece of your code.
- Ensure that the `props` you use in each of your components contains the data you expect. Putting a `debugger` at the top of your components to inspect props may help with this.
- Look at past assignments for inspiration, but know that this assignment may be different.

## Exceeds Expectations Requirements

**Stop and `et submit` your work _right now_**, leaving a comment on the file in Horizon indicating that it is your Meets submission. The Exceeds Expectations portion will break your Meets Expectations code.

1. The first question displayed when the page loads should still be the question given to you in the `constants/data.js` file.

- Add an API endpoint to the Sinatra application using the path below. **Use this data (the `questions.json` file via your Sinatra API endpoint) for the remainder of this challenge.**

  ```no-highlight
  http://localhost:4567/api/v1/question.json
  ```

  The JSON response should be a single random question with three incorrect answers and one correct answer. The following is an example of how the response body should be structured.

  ```json
  {
    "id": 1,
    "body": "What is the best JavaScript Framework?",
    "correctAnswerId": 3,
    "answers": [
      {
        "id": 1,
        "body": "Ember"
      },
      {
        "id": 2,
        "body": "Angular 2"
      },
      {
        "id": 3,
        "body": "React"
      },
      {
        "id": 4,
        "body": "Rails"
      }
    ]
  };
  ```

- When a correct answer is selected, your React application should display a button with the text `Next Question`.

  ![React Quiz 4][react-quiz-4]

- Clicking on the `Next Question` button will update the application to show a question randomly chosen from the server.

  - The page should not display either 'Correct!' or 'Incorrect' when the new question is initially displayed.

  ![React Quiz 5][react-quiz-5]

[localhost-4567]: http://localhost:4567
[react-quiz-1]: https://s3.amazonaws.com/horizon-production/images/react-quiz-1.png
[react-quiz-2]: https://s3.amazonaws.com/horizon-production/images/react-quiz-2.png
[react-quiz-3]: https://s3.amazonaws.com/horizon-production/images/react-quiz-3.png
[react-quiz-4]: https://s3.amazonaws.com/horizon-production/images/react-quiz-4.png
[react-quiz-5]: https://s3.amazonaws.com/horizon-production/images/react-quiz-5.png
