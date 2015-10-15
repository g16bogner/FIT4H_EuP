json.array!(@movies) do |movie|
  json.extract! movie, :id, :title, :rank
  json.url movie_url(movie, format: :json)
end
