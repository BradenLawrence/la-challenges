let person = {
  firstName:    "Braden",
  lastName:     "Lawrence",
  name()        { return `${this.firstName} ${this.lastName}` },
  hometown:     "Mentor, OH",
  occupation:   "Frontend Developer",
  catchPhrase:  "INCONCEIVABLE!!"
}

console.log(person.name())
