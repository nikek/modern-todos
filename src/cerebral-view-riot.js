export default function(controller) {
  return {
    connectCerebral: (tag, statePaths, signalPaths, controllerName) => {
      // Get the whole controller
      if(controllerName) {
        tag[controllerName] = controller
      }

      // Attach signals to tag
      if(signalPaths) {
        Object.keys(signalPaths).forEach((key) => {
          tag[key] = controller.getSignals(signalPaths[key])
        })
      }

      // Attach state and udpate tag on state changes
      if(statePaths) {
        const updateState = function () {
          Object.keys(statePaths).forEach((key) => {
            tag[key] = controller.get(statePaths[key])
          })
          tag.update()
        }

        // Setup state listener and cleanup logic
        controller.on('change', updateState)
        tag.on('unmount', () => {
          controller.removeListener('change', updateState)
        })

        // Init
        updateState()
      }
    }
  }
}
