json.array!(@disks) do |disk|
  json.extract! disk, :id, :name, :author, :price, :recording_year, :status_id
  json.url disk_url(disk, format: :json)
end
