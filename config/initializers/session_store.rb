# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tweetlemd_session',
  :secret      => '27d34a9675234925dc4c0408e42c040a6aa524a45ea0a50a685bdcd8816792b9bb3291f8ec9be6a3e490ddf2f0344cbd28458763eeb0754d0199d080d591d80e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
