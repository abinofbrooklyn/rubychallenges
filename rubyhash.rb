class RubyHash
  attr_accessor :instruments

  def initialize(instruments)
    @instruments = instruments
  end

  def switch_key_value
    @instruments.invert
  end

  def return_values
    @instruments.values
  end

  def return_keys
    @instrument.keys
  end

  def replace_value(key, value)
    @instruments[key] = value
  end

  def add_to_hash(key, value)
    @instruments.merge!(key => value)
  end

  def length_of_hash
    @instruments.length
  end

  def find_key_with_same_values(value)
    @instruments.select {|k, v| v == value }.keys
  end

  def key_value_to_sentence(key)
    value = @instruments.select {|k, v| k == key }.values
    "#{key.capitalize}'s value is #{value.join(" ")}"
  end
end
