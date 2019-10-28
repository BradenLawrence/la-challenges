The tides of technology have turned, and your team now wants you to recreate a frequently used program in  *JavaScript*. Write a program to interact with the public wishing to get on a space flight with you.

## Getting Started

From your `challenges` folder in the terminal, type the following commands:

```no-highlight
et get public-space-flights-javascript
cd public-space-flights-javascript
```

To run your code,

```no-highlight
open index.html
atom .

> your work will go in `main.js`
```

In the browser, open up the JavaScript console. You can refresh the page in order to see your changes.

### Part 1

Write a program that takes in user input and prints it to the console.

Here is what your program should do:

- Greet the customer.
- Ask how many adult tickets they would like.
- Accept the user's answer and save it as a variable.
- Ask how many child tickets they would like.
- Accept the user's answer and save it as a variable.
- Print a sentence returning the number of adult and child tickets the user has asked for.

> Remember, there will be more than one way to successfully complete this exercise!

### Example Output:

```no-highlight
Hello brave customer! Welcome to our exclusive space flight tours.
How many adult tickets would you like?
> 6
How many child tickets would you like?
> 2
Here are your 6 adult tickets and 2 child tickets!
```

{% show_hint %}
* Grab input from the user via `prompt()` and print to the console using `console.log`
{% endshow_hint %}

### Part 2

Lastly, the customer has taken a look at your food menu and would like to know what some orders would cost. Impressed by your programming skill, he asks you to calculate the price of some different combinations of menu items. Luckily, you have the cost of each menu item stored in your code as a variable! Copy and paste this menu into your `main.js` file:

```javascript
const dehydratedBanana = 1.27
const tofuCake = 4.17
const cheeseSpread = 3.79
const dehydratedIceCreamSandwich = 0.75
```

The orders that the customer is wondering about are listed below. For each one, write a line of code that calculates the cost of the order by using the variables above. Print each answer to the console.

- Two tofu cakes and two dehydrated ice cream sandwiches
- Eight cheese spreads and a dehydrated banana
- Three of each item on the menu

> Recall the `const` variable values cannot change for the life of the program.

### Example Output:

```javascript
'Two tofu cakes and two dehydrated ice cream sandwiches cost $9.84'
'Eight cheese spreads and a dehydrated banana cost $31.59'
'Three of each item on the menu cost $29.94'
```

{% show_hint %}

* Remember that you can add numbers together  
* Remember that you can add strings together, and also use string interpolation
* `Two tofu cakes and two dehydrated ice cream sandwiches cost $${(2 * tofuCake + 2 * dehydratedIceCreamSandwich)}`

{% endshow_hint %}  

### Submitting Your Code

Once you have completed this exercise, use the `et submit` command to submit your code from this project's folder.
