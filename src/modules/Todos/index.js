import colorChanged from './signals/colorChanged';
import redirectRoot from './signals/redirectRoot';
import addTodo from './signals/addTodo';
import updateNewTodoTitle from './signals/updateNewTodoTitle';
import toggleDone from './signals/toggleDone';

export default (options = {}) => {
  return (module, controller) => {

    module.addState({
      title: 'My Todos',
      newTodoTitle: '',
      list: []
    });

    module.addSignals({
      colorChanged,
      redirectRoot,
      addTodo,
      updateNewTodoTitle,
      toggleDone
    });

  };
}
