require 'addressable/uri'
require 'rest-client'


url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contact_shares/4'
).to_s

# puts RestClient.get(url)

# puts RestClient.post(
#   url,
#   { contact_share: { contact_id: 2, user_id: 3 } }
#   )

# puts RestClient.patch(
#   url,
#   { contact: { name: "Pippin", email: "pippin@shire.com" } }
#   )

puts RestClient.delete(url)
