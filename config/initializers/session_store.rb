# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_video_tweet_session',
  :secret      => '0b44335e82f4019610625cf820c3a7f87ddc3844e7e1ab90d85c3ecbd142616d2ad7a839a7a47296b5c9c5c03e41c12042ced5c3c39ff27bbea2d1941e0f9402'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
