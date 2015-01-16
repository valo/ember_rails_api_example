# for more details see: http://emberjs.com/guides/models/defining-models/

TaskManager.Task = DS.Model.extend
  project: DS.belongsTo('project')
  name: DS.attr('string')
  completed: DS.attr('boolean')
