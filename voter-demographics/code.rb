# Francis, Underwood, 52, 100000, 2, Male, College

voters = [
  {
    firstName: "Jon",
    lastName:  "Smith",
    age:       25,
    income:    50000,
    household: 1,
    gender:    "Male",
    education: "College"
  },
  {
    firstName: "Jane",
    lastName:  "Davies",
    age:       30,
    income:    60000,
    household: 3,
    gender:    "Female",
    education: "High School"
  },
  {
    firstName: "Sam",
    lastName:  "Farelly",
    age:       32,
    income:    80000,
    household: 2,
    gender:    "Unspecified",
    education: "College"
  },
  {
    firstName: "Joan",
    lastName:  "Favreau",
    age:       35,
    income:    65000,
    household: 4,
    gender:    "Female",
    education: "College"
  },
  {
    firstName: "Sam",
    lastName:  "McNulty",
    age:       38,
    income:    63000,
    household: 3,
    gender:    "Male",
    education: "College"
  },
  {
    firstName: "Mark",
    lastName:  "Minahan",
    age:       48,
    income:    78000,
    household: 5,
    gender:    "Male",
    education: "High School"
  },
  {
    firstName: "Susan",
    lastName:  "Umani",
    age:       45,
    income:    75000,
    household: 2,
    gender:    "Female",
    education: "College"
  },
  {
    firstName: "Bill",
    lastName:  "Perault",
    age:       24,
    income:    45000,
    household: 1,
    gender:    "Male",
    education: "Did Not Complete High School"
  },
  {
    firstName: "Doug",
    lastName:  "Stamper",
    age:       45,
    income:    75000,
    household: 1,
    gender:    "Male",
    education: "College"
  },
  {
    firstName: "Francis",
    lastName:  "Underwood",
    age:       52,
    income:    100000,
    household: 2,
    gender:    "Male",
    education: "College"
  }
]

stats = {}
stats[:total] = {
  voters:    voters.size,
  age:       voters.reduce(0) {|total, voter| total + voter[:age]},
  income:    voters.reduce(0) {|total, voter| total + voter[:income]}.round(2),
  household: voters.reduce(0) {|total, voter| total + voter[:household]},
  gender: {
    male:         voters.select {|voter| voter[:gender] == "Male"       }.size,
    female:       voters.select {|voter| voter[:gender] == "Female"     }.size,
    unspecified:  voters.select {|voter| voter[:gender] == "Unspecified"}.size
  }
}
stats[:average] = {
  age:       stats[:total][:age]       / stats[:total][:voters],
  income:    stats[:total][:income]    / stats[:total][:voters],
  household: stats[:total][:household] / stats[:total][:voters].to_f
}

# * Average age
puts "Average age: #{stats[:average][:age]}"

# * Average income
puts "Average income: #{stats[:average][:income]}"

# * Average household size
puts "Average household size: #{stats[:average][:household]}"

# * Female Percentage

# * Male Percentage
# * Unspecified Gender Percentage
# * Percent of those who obtained a college education level
# * Percent of those who obtained no higher than a high school education level
# * Percent of those that did not finish high school
