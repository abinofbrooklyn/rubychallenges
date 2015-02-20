require "spec_helper"
require_relative "../rubystring"

describe RubyString do
  before do
    @my_ruby = RubyString.new("Mickey Mouse is not there or is he?")
  end

  it "counts the length of a string without spaces" do
    expect(@my_ruby.string_length).to eq 28
  end

  it "add words to a string" do
    expect(@my_ruby.add_words(" No he is not")).to eq("Mickey Mouse is not there or is he? No he is not")
  end

  it "reverses the content of the string" do
    expect(@my_ruby.reverse_words).to eq("?eh si ro ereht ton si esuoM yekciM")
  end

  it "counts the same characters of the string" do
    expect(@my_ruby.character_counter("i")).to eq 3
  end

  it "finds the longest word in the string" do
    expect(@my_ruby.longest_word).to eq("Mickey")
  end

  it "finds the shortest word in the string" do
    expect(@my_ruby.shortest_word).to eq ("is")
  end

  it "validates there are no vowels in string" do
    expect(@my_ruby.remove_vowels).to eq("Mcky Ms s nt thr r s h?")
  end

  it "finds the middle word of the string" do
    expect(@my_ruby.middle_word).to eq("there")
  end

  it "replaces 3rd word" do
    expect(@my_ruby.replace_word(2, "was")).to eq ("Mickey Mouse was not there or is he?")
  end

  it "switches postions of the 2nd and 5th word in the string" do
    expect(@my_ruby.switch_words(1, 4)).to eq ("Mickey there is not Mouse or is he?")
  end
end
