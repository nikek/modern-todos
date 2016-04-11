function startLoading({state}) {
  state.set('todos.loading', true)
}

function stopLoading({state}) {
  state.set('todos.loading', false)
}

function setupNewTodo({input, state, output}) {
  setTimeout(function() {
    let newTodoTitle = state.get('todos.newTodoTitle')
    let newTodo = {title: newTodoTitle, done: false}

    output.success({newTodo})
  }, 1000)
}

function addTodo({state, input}) {
  state.push('todos.list', input.newTodo)
  state.set('todos.newTodoTitle', '')
}

export default [
  startLoading,
  [setupNewTodo, {
    success: [addTodo]
  }],
  stopLoading
]
