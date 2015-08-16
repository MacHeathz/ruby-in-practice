require 'rubygems'
require 'rspec'
require_relative 'intranet_reader'


describe "A new IntranetReader" do
  before do
    @my_rss = IntranetReader.new('sample_feed.rss')
  end

  it "is empty." do
    expect(@my_rss).to be_empty
  end

  it "does not have entries." do
    expect(@my_rss.entries).to be_nil
  end

  it "does not have 'raw'." do
    expect(@my_rss.raw).to be_nil
  end
end


describe "A populated IntranetReader" do
  before do
    @my_rss = IntranetReader.new('sample_feed.rss')
    @my_rss.process
  end

  it "is not empty." do
    expect(@my_rss).not_to be_empty
  end

  it "has entries." do
    expect(@my_rss.entries).not_to be_nil
  end

  it "has 'raw'." do
    expect(@my_rss.raw).not_to be_nil
  end
end
