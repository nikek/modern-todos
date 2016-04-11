function toggleDone({input, state}) {
  const index = state.get('todos.list').indexOf(input.todo);
  state.select(['todos','list', index]).set('done', !input.todo.done);
}

export default [
  toggleDone
]
