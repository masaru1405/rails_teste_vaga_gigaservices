class Person < ApplicationRecord
  paginates_per 10

  def self.search(search)
    person = Person.where(first_name: search)
    if person.count == 0 #no result
      nil
    end
    person
  end
end
