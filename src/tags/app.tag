import {signals, state} from '../app.js'
import './todos-list.tag'

<app>
  <h1>{title}</h1>
  <todos-list></todos-list>
  <form onsubmit={ add }>
    <input type="text" name="input">
    <button type="submit">Add</button>
    <div if={loading}>loading</div>
  </form>

  <script>
    this.signals = signals;

    this.on('mount', () => { this.title = state.get('todos', 'title') })
    this.on('update', () => {
      this.loading = state.get('todos', 'loading')
    })
    state.on('update', this.update)

    this.add = () => {
      signals.todos.addTodo({ title: this.input.value })
      this.input.value = ''
    }
  </script>

  <style media="screen">
    .done {
      text-decoration: line-through;
    }
  </style>
</app>
