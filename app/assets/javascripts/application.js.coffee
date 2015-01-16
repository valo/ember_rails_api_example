#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require task_manager

# for more details see: http://emberjs.com/guides/application/
window.TaskManager = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true

TaskManager.ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: ''
