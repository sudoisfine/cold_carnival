json.array!(@releases) do |release|
  json.extract! release, :id, :name, :date, :artist_id, :tracklist, :description
  json.url release_url(release, format: :json)
end
