### Introduction

Getting user input is one of the ways we can make our Ruby programs fun and
interactive. This lesson will cover getting user input until the user decides
that they are done.

### Learning Goals

- Incorporate the special string character for newline (`\n`) into our ruby programs
- Apply pseudocode to assist in decomposing a larger programming problem
- Continuously prompt the user of our ruby program for input until they choose to be finished

## Getting Started  

From your challenges folder, type the following command:

```no-highlight
et get interactive-ruby-programs  
cd interactive-ruby-programs  
atom .  
```  

All _your_ work should be done in the provided `code.rb` file. You can run your code in the terminal with:

```no-highlight
ruby code.rb
```

Run the solutions with:

```no-highlight
ruby supply_list.rb
ruby total_cost.rb
```   

**Don't run the solutions until you've first solved the challenge on your own!**

### Building a Spaceship Supply List

Together, let's create a program that lets us keep track of what supplies we need to obtain for our spaceship prior to taking off on a space flight, and prints out that list when finished.

To start, let's build the header for the running of our supply list.

```ruby
# create a new variable that will hold our safety list
supply_list =  "Spaceship Supply List\n"
supply_list += "------------\n"
```

### Wait! How Can I Use `+=` on a String Variable?

We can use the `+=` operator on a String to add on, or _append_ additional characters to the string.

```ruby
message = "Hello"
message += " world"
message += "!"

puts message
```

This is a shorthand way of adding strings together.
The code below accomplishes the same task, but may be a bit harder to read.

```ruby
message = "Hello"
message = message + " world"
message = message + "!"

puts message
```

### Planning the Rest of Our Approach with Pseudocode

Using comments, and the programming constructs we are familiar with (variable
assignment, looping, conditional statements, user input), let's come up with a
set of steps for solving this problem.

```no-highlight
# create a new variable that will hold our supply list
# loop until the user is done entering supplies
  # ask the user for a supply, or if they are done
  # get the supply
  # add the supply to our list
# end loop

# print the supply list
```

Now that we have a representation of our problem in plain English, we can attempt to convert this description into code. We should address each comment, one by one, to fully flesh out our code.

```ruby
# create a new variable that will hold our safety list
supply_list =  "Spaceship Supply List\n"
supply_list += "------------\n"

# loop until the user is done entering supplies
input = ""
while input != "done" do
  # ask the user for a supply, or if they are done
  print "Please enter a supply (or 'done'): "

  # get the supply
  input = gets.chomp

  # add the supply to our list
  supply_list += "* #{input}\n"

# end loop
end

# print the safety list
puts "\n\n"
puts supply_list

```

Note that there is a bug in this above code. Try running this program yourself and see if you can locate and fix the bug on your own.

This technique of describing what we want in plain English instructions and
features of a programming language is known as **pseudocode**, or sometimes _comment-driven development_.

> Pro Tip: Don't leave extraneous comments in final code such as System Checks. Like any work we push to production, the code should be clean of comments and able to speak for itself!

{% show_solution %}

```ruby
supply_list =  "Spaceship Supply List\n"
supply_list += "------------\n"

input = ""
while input != "done" do
  print "Please enter a supply (or 'done'): "
  input = gets.chomp

  # only add the user's input if it isn't 'done'
  if input != "done"
    supply_list += "* #{input}\n"
  end
end

puts "\n\n"
puts supply_list
```

It is important to not add `"done"` to the `supply_list`, as it is what the user types to signal that they have completed their list.

The conditional code here inside the loop handles for when the user types `done`

```ruby
  # only add the user's input if it isn't 'done'
  if input != "done"
    supply_list += "* #{input}\n"
  end
```

{% endshow_solution %}


### Summing up Prices

Using a similar approach, we can build a very useful program which will add up the total cost of supplies needed for our space journey.

Again, let's start with a plain English representation of what we would like to accomplish.

```no-highlight
# create a variable that will hold the total cost
# loop until the user is done entering costs
  # print out the current total price
  # ask the user for an amount, or if they are done
  # get the cost
  # add the cost to the total
# end loop

# print the final total cost
```

Now that we have a description of what we want, let's implement it in Ruby.

```ruby
# create a variable that will hold the total cost
total_cost = 0.00

# loop until the user is done entering costs
input = nil
while input != "done" do
  # print out the current total cost
  puts "\nThe current total is: $ #{total_cost}"

  # ask the user for a cost, or if they are done
  print "What is the cost of the item? (enter 'done' when finished)\n> "

  # get the cost
  input = gets.chomp

  # add the cost to the total
  if input != "done"
    total_cost += input.to_f
  end

# end loop
end

# print the final total cost
puts "\n\n"
puts "The total is: $ #{total_cost}"
```

### Wrap Up

In this lesson, we covered how to use while loops to get user input, as well as
how to describe a problem in plain English using **pseudocode**. When you encounter
future problems and are unsure of how to start, try explaining what you would
like to accomplish, step by step, using comments.
