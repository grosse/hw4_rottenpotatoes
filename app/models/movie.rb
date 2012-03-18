class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def find_with_same_director(id)
     id="Not this ID"
     puts "find_"
     puts id
     m = self.find_by_id(id)
     puts m
     return self.find_by_director(m[:director])
  end
end
