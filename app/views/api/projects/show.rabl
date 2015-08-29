object @project
attributes :name, :created_at
unless @project.tasks.empty?
  child(:tasks) do |project|
    attributes :name
    attributes :due_at
  end
end
