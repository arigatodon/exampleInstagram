json.array!(@posts) do |post|
  json.extract! post, :id, :imagen
  json.url post_url(post, format: :json)
end
