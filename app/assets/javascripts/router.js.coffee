# For more information see: http://emberjs.com/guides/routing/

TaskManager.Router.map ()->
  @resource 'projects', ->
    @resource('project', { 'path' : '/:project_id' });

