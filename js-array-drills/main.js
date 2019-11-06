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
let teacherFilter = "i"
let iInName = (arr, str) => {
  return arr.filter(item => {
    return item.toLowerCase().includes(str)
  })
}

console.log(`Teachers with 'i' in name: ${iInName(teachers, teacherFilter)}`)

//Return the number of teachers

let teacherCount = () => {
  return teachers.length
}

console.log(`Number of teachers: ${teacherCount()}`)

//Return the number of rooms of students

let roomCount = () => {
  return rooms.length
}

console.log(`Number of rooms: ${roomCount()}`)

//Return the number of students in all the rooms

let studentCount = (arr) => {
  let total = 0
  arr.forEach(item => {
    total += item.length
  })
  return total
}

console.log(`Total students: ${studentCount(rooms)}`)

//Return the students who have an i in their names
let studentFilter = "i"
let whichStudents = (groups, str) => {
  let filtered = []
  groups.forEach(group => {
    filtered = filtered.concat(
      group.filter(member => {
        return member.toLowerCase().includes(str)
      })
    )
  })
  return filtered
}

console.log(`The students who have an 'i' in their name are \
${whichStudents(rooms, studentFilter)}.`)

//Return the teacher who has the given student in their room

let whichTeacher = (student) => {

}

console.log(`The teacher who has Jorge is ${whichTeacher("Jorge")}.`)
console.log(`The teacher who has Alexa is ${whichTeacher("Alexa")}.`)
