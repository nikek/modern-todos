import Controller from 'cerebral'
import Model from 'cerebral-model-baobab'
import Devtools from 'cerebral-module-devtools'
import Todos from './modules/Todos'

const model = Model({})
const controller = Controller(model)

controller.addModules({
  todos: Todos(),
  devtools: Devtools()
})

export const state = model.tree
export const signals = controller.getSignals()
