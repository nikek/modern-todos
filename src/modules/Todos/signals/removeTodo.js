function removeTodo({input, state}) {
  const index = state.select('todos.list').get().indexOf(input.todo)
  state.unset(`todos.list.${index}`)
}

export default [removeTodo]
