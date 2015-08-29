collection @projects, object_root: false
attributes :name, :created_at
child(:tasks, object_root: false) do
  attributes :name, :due_at
end
