# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_af4_session',
  :secret      => 'fb9a7f1f804657b93dd8faf2e20aa6b5d31ef7a169ccbe89011e6663a20aeadce6d22a2c1f891d55a18e8a83bbb4a6830ca9319bf0d45d2ab5cf5fb9ff0f5af1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
