import set from 'cerebral-addons/set'
import copy from 'cerebral-addons/copy'
import push from 'cerebral-addons/push'

const setupNewTodo = ({input, state, output}) => {
  setTimeout(function() {
    output.success({
      title: input.title,
      done: false
    })
  }, 1000)
}

export default [
  set('state://todos/loading', true),
  [setupNewTodo, {
    success: [copy('input:/', push('state://todos/list'))]
  }],
  set('state://todos/loading', false)
]
