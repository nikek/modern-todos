import visibleTodos from '../modules/Todos/computed/visibleTodos.js'

<todos-list>
  <ul>
    <li each={ todo, i in list }>
      <label class={ done: todo.done } onclick={toggle}>
        <input type="checkbox" checked={todo.done}> {todo.title}
      </label>
      <button type="button" class="remove" onclick={remove}>&times;</button>
    </li>
  </ul>

  <button type="button" name="all" onclick={setFilter}>All</button>
  <button type="button" name="done" onclick={setFilter}>Done</button>
  <button type="button" name="notDone" onclick={setFilter}>Not done</button>

  <script>
    this.toggle = (e) => this.todos.toggleDone({todo: e.item.todo})
    this.remove = (e) => this.todos.removeTodo({todo: e.item.todo})
    this.setFilter = (e) => this.todos.setFilter({filter: e.target.name})

    this.connectCerebral(this,
      { list: visibleTodos },
      { todos: ['todos'] }
    )
  </script>
</todos-list>
