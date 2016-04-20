function toggleDone({input, state}) {
  const index = state.select('todos.list').get().indexOf(input.todo)
  const todo = state.select(`todos.list.${index}`)
  todo.set('done', !todo.get('done'))
}

export default [toggleDone]
