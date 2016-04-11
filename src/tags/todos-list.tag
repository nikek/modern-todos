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

  <style>
    ul {
      list-style: none;
      padding-left: 10px;
    }
    li + li { margin-top: .25em;}
    label { display: inline-block; padding: 0 6px 0 1px; border-radius: 2px;}
    label:hover { background-color: rgba(200,220,255,0.5) }
    .done { text-decoration: line-through; }
    button.remove:hover {
      background-color: #f8d8d8;
      border-color: #dbb;
    }
  </style>
</todos-list>
