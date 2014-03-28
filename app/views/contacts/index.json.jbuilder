json.array!(@contacts) do |contact|
  json.extract! contact, :id, :email, :subject, :description, :first, :last
  json.url contact_url(contact, format: :json)
end
