
require 'rubygems'
gem 'twitter4r', '>=0.2.0'
require 'twitter'

Twitter::Client.configure do |conf|
  # We can set Twitter4R to use <tt>:ssl</tt> or <tt>:http</tt> to connect to the Twitter API.
  # Defaults to <tt>:ssl</tt>
  conf.protocol = :ssl

  # We can set Twitter4R to use another host name (perhaps for internal
  # testing purposes).  Defaults to 'twitter.com'
  conf.host = 'twitter.com'

  # We can set Twitter4R to use another port (also for internal
  # testing purposes).  Defaults to 443
  conf.port = 443

  # We can set proxy information for Twitter4R
  # By default all following values are set to <tt>nil</tt>.
  # conf.proxy_host = 'myproxy.host'
  # conf.proxy_port = 8080
  # conf.proxy_user = 'myuser'
  # conf.proxy_pass = 'mypass'

  # We can also change the User-Agent and X-Twitter-Client* HTTP headers
  conf.user_agent = 'TweetleMD'
  conf.application_name = 'TweetleMD'
  conf.application_version = 'v 0.1'
  conf.application_url = 'http://tweetleMD.com'

  # Twitter (not Twitter4R) will have to setup a source ID for your application to get it
  # recognized by the web interface according to your preferences.
  # To see more information how to go about doing this, please referen to the following thread:
  # http://twitter.com/oauth_clients/new
  # http://groups.google.com/group/twitter4r-users/browse_thread/thread/c655457fdb127032
  #conf.source = "your-source-id-that-twitter-recognizes"

end

client = Twitter::Client.new(:login => 'holtonma', :password => 'scramjet')
received_messages = client.messages(:received)

received_messages.each do |dm|
  puts "direct messages: #{dm}"
end

timeline = client.timeline_for(:friends) do |status|
  puts "friend status: #{status.user.screen_name}: #{status.text}"
end

status = Twitter::Status.create(:client => client, :text => 'posting this using twitter4r gem')
