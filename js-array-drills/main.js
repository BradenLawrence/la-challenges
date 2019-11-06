let teachers = ["Arrington", "Kincart", "Alberts", "Pickett"]

let rooms = [
  ["Andy", "Rodolfo", "Lynn", "Talia"],
  ["Al", "Ross", "Jorge", "Dante"],
  ["Nick", "Kim", "Jasmine", "Dorothy"],
  ["Adam", "Grayson", "Aliyah", "Alexa"]
]

let evenIndex = (arr) => {
  return arr.filter((item, index) => {
    return index % 2 === 0
  })
}
console.log(`Teachers with an even index: ${evenIndex(teachers)}`)

let teacherFilter = "i"
let iInName = (arr, str) => {
  return arr.filter(item => {
    return item.toLowerCase().includes(str)
  })
}
console.log(`Teachers with 'i' in name: ${iInName(teachers, teacherFilter)}`)


let teacherCount = () => {
  return teachers.length
}
console.log(`Number of teachers: ${teacherCount()}`)


let roomCount = () => {
  return rooms.length
}
console.log(`Number of rooms: ${roomCount()}`)


let studentCount = (arr) => {
  let total = 0
  arr.forEach(item => {
    total += item.length
  })
  return total
}
console.log(`Total students: ${studentCount(rooms)}`)

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

let whichTeacher = (student) => {
  let roomIndex = -1
  rooms.forEach((room, i) => {
    if(room.indexOf(student) !== -1) {
      roomIndex = i
    }
  })
  return teachers[roomIndex]
}
console.log(`The teacher who has Jorge is ${whichTeacher("Jorge")}.`)
console.log(`The teacher who has Alexa is ${whichTeacher("Alexa")}.`)
