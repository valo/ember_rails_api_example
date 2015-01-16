# for more details see: http://emberjs.com/guides/controllers/

TaskManager.ProjectsIndexController = Ember.ArrayController.extend
  itemController: "Project"
  newProjectName: null

  actions:
    createProject: ->
      project = @store.createRecord('project', {name: @get('newProjectName')})

      @set('newProjectName', null)

      project.save()

