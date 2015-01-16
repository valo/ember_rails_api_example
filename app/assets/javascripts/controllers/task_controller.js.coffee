# for more details see: http://emberjs.com/guides/controllers/

TaskManager.TaskController = Ember.ObjectController.extend
  complatedChanged: (->
    @get('model').save()
  ).observes('completed')

  actions:
    destory: ->
      @get('model').destroyRecord()

    saveTask: ->
      alert('hi')
