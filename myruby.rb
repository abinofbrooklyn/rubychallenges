class RubyArray
  attr_accessor :countries

  def initialize(*countries)
    @countries = countries
  end

  def sorting_countries
    @countries.map(&:downcase).sort
  end

  def reverse_sort
    @countries.map(&:downcase).sort_by { |c| c }.reverse
  end

  def remove_country(index)
    @countries = sorting_countries
    @countries.slice!(index)
  end

  def middle_country
    @countries = sorting_countries
    find_place = (sorting_countries.size) / 2
    @countries.values_at(find_place).join
  end

  def same_name
    duplicate_countries = @countries.map(&:downcase)
    duplicate_countries.find_all { |c| duplicate_countries.count(c) > 1 }.uniq
  end
end
