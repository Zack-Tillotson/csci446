# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gamez_session',
  :secret      => 'b5b3335d6b3908cdacfff298cf9dbd96e165f6395f8730deb0cf80da6344a93cb39b0d1aa6539fd556d7093735c5ce9934938afd4d95b2b5cb01ac2fdc6da9ef'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
