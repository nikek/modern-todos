function toggleDone({input, state}) {
  const todo = state.select(`todos.list.${input.index}`);
  todo.set('done', !todo.get('done'));
}

export default [toggleDone]
