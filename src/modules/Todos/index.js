import addTodo from './signals/addTodo';
import toggleDone from './signals/toggleDone';

export default (options = {}) => {
  return (module, controller) => {

    module.addState({
      title: 'My Todos',
      newTodoTitle: '',
      list: [{title:'My first todo', done:false}, {title:'The second one', done:true}]
    });

    module.addSignals({
      addTodo,
      toggleDone
    });

  };
}
