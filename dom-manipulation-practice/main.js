let todos = [
  "Write some JavaScript",
  "Submit System Check",
  "Take a Break"
]

todos.forEach(todo => {
  document.getElementById("todo-list").innerHTML += `<li>${todo}</li>`
})
