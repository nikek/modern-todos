function removeTodo({input, state}) {
  state.unset(`todos.list.${input.index}`)
}

export default [removeTodo]
