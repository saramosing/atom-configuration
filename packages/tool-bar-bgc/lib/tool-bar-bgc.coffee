module.exports =
  activate: (state) ->

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'bgc-tool-bar'

    @toolBar.addButton
      icon: 'share-alt-square'
      callback: 'tree-view:toggle'
      tooltip: 'Toggle Tree-View'
      iconset: 'fa'
    @toolBar.addButton
      icon: 'document'
      callback: 'application:new-file'
      tooltip: 'New File'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'folder'
      callback: 'application:open-file'
      tooltip: 'Open...'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'save'
      callback: 'core:save'
      tooltip: 'Save'
      iconset: 'fi'

    @toolBar.addSpacer()
    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'social-github'
      callback: 'git-control:toggle'
      tooltip: 'Toggle git control'
      iconset: 'ion'

    @toolBar.addSpacer()
    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'navicon-round'
      callback: 'command-palette:toggle'
      tooltip: 'Toggle Command Palette'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'gear-a'
      callback: 'settings-view:open'
      tooltip: 'Open Settings View'
      iconset: 'ion'

    if atom.inDevMode()
      @toolBar.addSpacer()

      @toolBar.addButton
        icon: 'refresh'
        callback: 'window:reload'
        tooltip: 'Reload Window'
        iconset: 'ion'
      @toolBar.addButton
        icon: 'terminal'
        callback: ->
          require('remote').getCurrentWindow().toggleDevTools()
        tooltip: 'Toggle Developer Tools'
