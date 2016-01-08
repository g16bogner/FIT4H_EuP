json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :description, :start_date, :end_date
  json.url task_url(task, format: :json)
end
