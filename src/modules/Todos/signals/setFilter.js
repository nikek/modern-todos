function setFilter({input, state}) {
  state.set('todos.filter', input.filter)
}

export default [setFilter]
