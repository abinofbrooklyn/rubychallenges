require 'spec_helper'
require_relative '../rubyhash'

describe RubyHash do
  before do
    @my_ruby = RubyHash.new(cello: 'string', clarinet: 'woodwind', drum: 'percussion', oboe: 'woodwind', trumpet: 'brass', violin: 'string')
  end

  it "switches the keys and values of the hash" do
    switch_hash = @my_ruby.switch_key_value
    expect(@my_ruby.switch_key_value).to eq(switch_hash)
  end

  it "replaces the value of a specfic key" do
    expect(@my_ruby.replace_value(:cello, 'bass')).to eq('bass')
  end

  it "returns all the values of the hash" do
    values = @my_ruby.return_values
    expect(@my_ruby.return_values).to eq(values)
  end

  it "finds all the keys with the same values" do
    expect(@my_ruby.find_key_with_same_values("string")).to include(:cello, :violin)
  end

  it "adds a key and value to the hash" do
    expect(@my_ruby.add_to_hash(:flute, "woodwind")).to include(:flute => 'woodwind')
  end

  it "counts key value pair of hash" do
    @my_ruby.add_to_hash(:flute, "woodwind")
    expect(@my_ruby.length_of_hash).to eq 7
  end

  it "prints a sentence with key and value" do
    expect(@my_ruby.key_value_to_sentence(:cello)).to eq("Cello's value is string")
  end
end
