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

    this.on('before-mount', () => { this.title = state.get('todos','title'); this.update(); })
    this.on('update', () => {
      this.loading = state.get('todos','loading')
    })
    state.on('change', this.update)

    this.add = () => {
      signals.todos.addTodo({ title: this.input.value })
      this.input.value = ''
    }
  </script>
</app>
