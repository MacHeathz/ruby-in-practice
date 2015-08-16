require 'rubygems'
require 'simple-rss'
require 'open-uri'


class IntranetReader
  attr_reader :raw

  def initialize(url)
    @feed_url = url
    @rss = nil
  end

  def process
    @raw = open(@feed_url).read
    @rss = SimpleRSS.parse @raw
  end

  def entries
    @rss.items if @rss
  end

  def empty?
    @rss.nil? ? true : @rss.items.empty?
  end

end
