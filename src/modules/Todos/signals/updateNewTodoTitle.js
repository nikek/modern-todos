
function updateNewTodoTitle({input, state}) {
  state.set('todos.newTodoTitle', input.title)
}

export default [
  updateNewTodoTitle
]
