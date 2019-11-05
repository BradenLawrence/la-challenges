let teachers = ["Arrington", "Kincart", "Alberts", "Pickett"]

let rooms = [
  ["Andy", "Rodolfo", "Lynn", "Talia"],
  ["Al", "Ross", "Jorge", "Dante"],
  ["Nick", "Kim", "Jasmine", "Dorothy"],
  ["Adam", "Grayson", "Aliyah", "Alexa"]
]

//List all the teachers with an even index number (including 0)

let evenIndex = (arr) => {
  return arr.filter((item, index) => {
    return index % 2 === 0
  })
}

console.log(`Teachers with an even index: ${evenIndex(teachers)}`)

//List all of the teachers with the letter i in their name

let iInName = (arr) => {
  return arr.filter(item => {
    return item.includes("i")
  })
}

console.log(`Teachers with 'i' in name: ${iInName(teachers)}`)

//Return the number of teachers

let teacherCount = () => {
  return teachers.length
}

console.log(`Number of teachers: ${teacherCount()}`)

//Return the number of rooms of students

let roomCount = () => {

}

console.log(roomCount())

//Return the number of students in all the rooms

let studentCount = () => {

}

console.log(studentCount())

//Return the students who have an i in their names

let whichStudents = () => {

}

console.log(`The students who have an 'i' in their name are  ${whichStudents()}.`)

//Return the teacher who has the given student in their room

let whichTeacher = (student) => {

}

console.log(`The teacher who has Jorge is ${whichTeacher("Jorge")}.`)
console.log(`The teacher who has Alexa is ${whichTeacher("Alexa")}.`)
