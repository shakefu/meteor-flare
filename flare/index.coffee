Router.configure
  layoutTemplate: 'Layout'
  notFoundTemplate: 'NotFound'
  loadingTemplate: 'Loading'

Router.route '/', name: 'Index'

if Meteor.isServer
  return

UI.registerHelper 'pageTitle', (args...) ->
  document.title = args[..-2].join ''
  undefined

Template.Index.created = ->
  @welcome = new ReactiveVar 'Meteor Flare'

Template.Index.helpers
  welcome: -> Template.instance().welcome.get()
