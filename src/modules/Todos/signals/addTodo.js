import set from 'cerebral-addons/set'
import copy from 'cerebral-addons/copy'
import unshift from 'cerebral-addons/unshift'

const setupNewTodo = ({input, output}) => {
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
    success: [copy('input:/', unshift('state://todos/list'))]
  }],
  set('state://todos/loading', false)
]
