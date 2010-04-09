# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bachat_khata_session',
  :secret      => '77b724ee0c4b9f45be29ca6226e1c2a4f550d44ba33918469fbb0b5217ca966210b7c91242ff2c57acd5b2ab46b86e03ce4a4c6eebc86b6f4bd68e70cb2d06bb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
