import addTodo from './signals/addTodo'
import removeTodo from './signals/removeTodo'
import setFilter from './signals/setFilter'
import toggleDone from './signals/toggleDone'

export default (options = {}) => {
  return (module, controller) => {

    module.addState({
      filter: 'all',
      list: [
        {title:'My first todo', done:false},
        {title:'The second one', done:true}
      ]
    })

    module.addSignals({
      addTodo,
      removeTodo,
      setFilter,
      toggleDone
    })

  }
}
