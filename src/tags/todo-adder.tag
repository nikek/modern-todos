<todo-adder>
  <form onsubmit={add}>
    <input type="text" name="input">
    <button type="submit" disabled={loading}>Add</button>
    <span if={loading}>loading</span>
  </form>

  <script>
    this.connectCerebral(
      { loading: ['todos', 'loading'] },
      { addTodo: ['todos', 'addTodo'] }
    )

    this.add = () => {
      if (!this.input.value) return

      this.addTodo({ title: this.input.value })
      this.input.value = ''
    }
  </script>
</todo-adder>
