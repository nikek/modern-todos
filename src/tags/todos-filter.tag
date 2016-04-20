<todos-filter>
  <button type="button" name="all" class={active: current == 'all'} onclick={filter}>All</button>
  <button type="button" name="done" class={active: current == 'done'} onclick={filter}>Done</button>
  <button type="button" name="notDone" class={active: current == 'notDone'} onclick={filter}>Not done</button>

  <script>
    this.connectCerebral({
      current: ['todos', 'filter']
    }, {
      setFilter: ['todos', 'setFilter']
    })

    this.filter = (e) => this.setFilter({filter: e.target.name})
  </script>
</todos-filter>
