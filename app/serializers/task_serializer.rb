# frozen_string_sanatizer: true
class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
end
