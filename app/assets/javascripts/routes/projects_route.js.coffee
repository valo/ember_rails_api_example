# For more information see: http://emberjs.com/guides/routing/

TaskManager.ProjectsRoute = Ember.Route.extend({
  model: ->
    @store.findAll('project')
})
