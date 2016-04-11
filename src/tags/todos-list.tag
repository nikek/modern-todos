import {signals, state} from '../app.js'

<todos-list>
  <ul>
    <li each={ todo, i in list } class={ done: todo.done } onclick={toggle}>{todo.title}</li>
  </ul>

  <script>
    this.on('update', () => { this.list = state.get('todos', 'list') })
    state.on('update', this.update)

    this.toggle = (e) => {
      signals.todos.toggleDone({index: e.item.i})
    }
  </script>
</todos-list>
