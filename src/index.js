// This is a hook to make webpack package the css for us
import './style.less'

import Controller from 'cerebral'
import Model from 'cerebral-model-baobab'
import Devtools from 'cerebral-module-devtools'
import createCerebralMixin from 'cerebral-view-riot'
import Todos from './modules/Todos'
import riot from 'riot'
import './tags/app.tag'

const stateRoot = {
  version: '1.0.0'
}

const controller = Controller(Model(stateRoot))
controller.addModules({
  todos: Todos(),
  devtools: Devtools()
})

riot.mixin(createCerebralMixin(controller))
riot.mount('app')
