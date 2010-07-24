# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bulshitometro_session',
  :secret      => 'be38fd6922c0c4d27fd60974ff2418e066a6d47174d7feba7089926e6fb2da7fe15c82d3c99c6ddd9d99e50c1ef346e56c8c333a3ad2d062662da534542820aa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
