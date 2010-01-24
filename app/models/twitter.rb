require 'open-uri'
require 'json'

class Twitter 
  def self.query(q)
    q=CGI.escape(q)
    JSON.parse(
      open("http://search.twitter.com/search.json?page=1&rpp=6&q=#{q}").read
    )['results']
  end

  def self.query_from(twitter_id)
    self.query("from%#{twitter_id}")
  end
end
