import {signals, state} from '../app.js'
import './todos-list.tag'

<app>
  <h1>{title}</h1>
  <todos-list></todos-list>
  <div>
    <input type="text" name="input" oninput={ onInput }>
    <button type="button" name="button" onclick={ add }>Add</button>
    <div if={loading}>loading</div>
  </div>

  <script>
    this.signals = signals;
    this.on('update', () => {
      this.list = state.get('todos', 'list')
      this.title = state.get('todos', 'title')
      this.loading = state.get('todos', 'loading')
    })
    state.on('update', this.update)

    this.onInput = (e) => {
      console.log(e.target.value)
      signals.todos.updateNewTodoTitle({title: e.target.value})
    }

    this.add = () => {
      this.input.value = ''
      signals.todos.addTodo()
    }
  </script>

  <style media="screen">
    .done {
      text-decoration: line-through;
    }
  </style>
</app>
