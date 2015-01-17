class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :completed
end
