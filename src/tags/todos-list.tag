import {signals, state} from '../app.js'
import visibleTodos from '../modules/Todos/computed/visibleTodos.js';

<todos-list>
  <ul>
    <li each={ todo, i in list }>
      <label class={ done: todo.done } onclick={toggle}>
        <input type="checkbox" checked={todo.done}> {todo.title}
      </label>
      <button type="button" class="remove" onclick={remove}>&times;</button>
    </li>
  </ul>

  <button type="button" name="button" onclick={setFilterAll}>All</button>
  <button type="button" name="button" onclick={setFilterDone}>Done</button>
  <button type="button" name="button" onclick={setFilterNotDone}>Not done</button>

  <script>
    this.on('update', () => { this.list = state.get(visibleTodos) })
    state.on('change', this.update)

    this.toggle = (e) => signals.todos.toggleDone({index: e.item.i})
    this.remove = (e) => signals.todos.removeTodo({index: e.item.i})

    this.setFilterAll = () => { signals.todos.setFilter({filter:'all'}) }
    this.setFilterDone = () => { signals.todos.setFilter({filter:'done'}) }
    this.setFilterNotDone = () => { signals.todos.setFilter({filter:'notDone'}) }
  </script>
</todos-list>
