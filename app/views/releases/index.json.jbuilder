json.array!(@releases) do |release|
  json.extract! release, :id, :name, :artist_id
  json.url release_url(release, format: :json)
end
