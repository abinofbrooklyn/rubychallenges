require 'spec_helper'
require_relative '../rubyhash'

describe RubyHash do
  before do
    @my_ruby = RubyHash.new( :cello     => 'string',
                             :clarinet  => 'woodwind',
                             :drum      => 'percussion',
                             :oboe      => 'woodwind',
                             :trumpet   => 'brass',
                             :violin    => 'string' )
  end
end
