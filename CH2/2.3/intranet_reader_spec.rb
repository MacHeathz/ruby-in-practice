require 'rubygems'
require 'rspec'
require_relative 'intranet_reader'


describe "A new IntranetReader" do
  before do
    @my_rss = IntranetReader.new('sample_feed.rss')
  end

  it "should be empty." do
    expect(@my_rss).to be_empty
  end

  it "should not have entries." do
    expect(@my_rss.entries).to be_nil
  end

  it "should not have 'raw'." do
    expect(@my_rss.raw).to be_nil
  end
end


describe "A populated IntranetReader" do
  before do
    @my_rss = IntranetReader.new('sample_feed.rss')
    @my_rss.process
  end

  it "should not be empty." do
    expect(@my_rss).not_to be_empty
  end

  it "should have entries." do
    expect(@my_rss.entries).not_to be_nil
  end

  it "should have 'raw'." do
    expect(@my_rss.raw).not_to be_nil
  end
end
