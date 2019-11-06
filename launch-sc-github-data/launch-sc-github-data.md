You'll work to answer questions about repositories from [LaunchAcademy's GitHub account](https://api.github.com/orgs/LaunchAcademy/repos).

## Getting Started

```no-highlight
et get launch-sc-github-data
cd launch-sc-github-data
```

### Instructions

We have provided the data needed in the `data.js` file. While this is a lot of data, it's no different than what you've worked with in prior assignments. `data` is an array of objects, and each object contains a number of `key:value` pairs.

Notice how the data is "imported" at the top of the `github-data.js` file:

```javascript
let data = require('./data');
```

The `data` variable in `github-data.js` will contain the array defined in the `data.js` file.

### Meets Expectations Criteria
**Read the complete instructions BEFORE starting**

Write code in `github-data.js` using the `data` array to answer the following questions.

You should NOT change the code given, only complete the function bodies.

1. How many repositories does LaunchAcademy own? Your `numOfRepos` function must return an integer.
2. Which repository has the largest size? Your `largestRepo` function must return a string.
3. What is the most recently created repository? Your `mostRecentRepo` function must return a string.
4. How many repos have `0` stargazers? Your `noGazers` function must return an integer.
5. Which repo has the largest number of stargazers? Your `maxGazers` function must return a string.
6. Return the names of the repos that have a description that is not null. Your `hasDescriptions` function must return an array of strings.
7. Use `.map` to create an array of repository descriptions. Your `newDescriptionsArray` must return an array of strings. If there is no description given, return "No description provided". 
8. Use `.map` once again to create a summary of each repository's most important information. We want to know the **name** of the repository, who created it (the **owner**), and **how many watchers** there are. The resultant array should once again be an array of strings.
9. Return a string containing the 2 keys inside `monkey_party`'s license object.
10. What is `monkey_party`'s license url? Your return should be a string.
