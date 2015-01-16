# for more details see: http://emberjs.com/guides/controllers/

TaskManager.ProjectController = Ember.ObjectController.extend({
  newTaskName: ''

  actions:
    destroy: ->
      @get('model').destroyRecord()

    view: ->
      @transitionToRoute 'project', @get('model.id')

    createTask: ->
      task = @store.createRecord('task', { name: @get('newTaskName'), completed: false, project: @get('model') })

      @set('newTaskName', '')

      task.save()
})

