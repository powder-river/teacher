json.array!(@parents) do |parent|
  json.extract! parent, :id, :student_name, :parent_name, :parent_email
  json.url parent_url(parent, format: :json)
end
