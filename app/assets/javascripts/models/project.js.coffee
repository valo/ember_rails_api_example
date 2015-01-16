# for more details see: http://emberjs.com/guides/models/defining-models/

TaskManager.Project = DS.Model.extend
  tasks: DS.hasMany('task')
  name: DS.attr('string')
