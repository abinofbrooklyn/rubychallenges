require "spec_helper"
require_relative "../rubytime"

describe RubyTime do
  before do
    @my_ruby = RubyTime.new(Time.now)
  end

  it "prints the name of the day" do
    expect(@my_ruby.day).to eq("Thursday")
  end

  it "adds and hour to the time" do
    expect(@my_ruby.add_hour).to eq(24)
  end

  it "finds what day in the year it currently is" do
    expect(@my_ruby.find_day).to eq("4")
  end

  it "checks for timezone" do
    expect(@my_ruby.find_timezone).to eq("EST")
  end

  it "finds the day of the week 100 days from now" do
    puts @my_ruby.future_date
    expect(@my_ruby.future_date).to eq("Wednesday")
  end
end
