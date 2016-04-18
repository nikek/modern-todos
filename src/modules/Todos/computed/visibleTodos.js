export default function (get) {
  const todos = get('todos.list')
  const filter = get('todos.filter')

  return todos.filter(function(todo) {
    return (filter === 'all' ||
           (filter === 'done' && todo.done) ||
           (filter === 'notDone' && !todo.done))
  });
};
