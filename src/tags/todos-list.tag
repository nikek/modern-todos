import {signals, state} from '../app.js'

<todos-list>
  <ul>
    <li each={ todo, i in list }>
      <label class={ done: todo.done } onclick={toggle}>
        <input type="checkbox" checked={todo.done}> {todo.title}
      </label>
      <button type="button" class="remove" onclick={remove}>&times;</button>
    </li>
  </ul>

  <script>
    this.on('update', () => { this.list = state.get('todos', 'list') })
    state.on('update', this.update)

    this.toggle = (e) => signals.todos.toggleDone({index: e.item.i})
    this.remove = (e) => signals.todos.removeTodo({index: e.item.i})
  </script>
</todos-list>
