# For more information see: http://emberjs.com/guides/routing/

TaskManager.ProjectsIndexRoute = Ember.Route.extend({
  model: ->
    @modelFor('projects')
})
