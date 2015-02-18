require "spec_helper"
require_relative "../rubyarray"

describe RubyArray do
  before do
    @my_ruby = RubyArray.new("USA", "eNGlaNd", "DENMARK", "INDIA", "SPAIN", "CHINA", "BRAZIL", "SOUTH AFRICA", "australia", "Japan")
  end

  it "initializes an empty array" do
    my_ruby = RubyArray.new
    expect(my_ruby.countries).to be_empty
  end

  it "should add a country to array" do
    my_ruby = RubyArray.new
    expect{ my_ruby.countries << "USA" }.to change{ my_ruby.countries }.to include("USA")
  end

  it "should list 10 countries to array" do
    expect(@my_ruby.countries.count).to eq 10
  end

  it "should should sort array asc and return first element" do
    expect(@my_ruby.sorting_countries.first).to eq("australia")
  end

  it "should should sort array asc and return last element" do
    expect(@my_ruby.sorting_countries.last).to eq("usa")
  end

  it "should sort array desc and return first element" do
    expect(@my_ruby.reverse_sort.first).to eq("usa")
  end

  it "should sort arrat desc and return last element" do
    expect(@my_ruby.reverse_sort.last).to eq("australia")
  end

  it "should remove 7th element in sorted array" do
    @my_ruby.remove_country(6)
    expect(@my_ruby.countries.count).to eq 9
  end

  it "should find the middle element in sorted array" do
    expect(@my_ruby.middle_country).to eq("india")
  end

  it "should display countries with same name in array" do
    expect(@my_ruby.same_name).to be_empty
  end

  it "should count number of duplicate countries in array" do
    expect(@my_ruby.same_name.count).to eq 0
  end
end
