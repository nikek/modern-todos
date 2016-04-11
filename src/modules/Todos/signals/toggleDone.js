function toggleDone({input, state}) {
  let i = state.get('todos.list').indexOf(input.todo);
  let bla = state.select('todos','list', i).get();
  console.log(bla)
}

export default [
  toggleDone
]
