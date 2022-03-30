class Person < ApplicationRecord
  paginates_per 10

  validates_presence_of :gender, :title, :first_name, :last_name, :email, :picture

  def self.search(search)
    if !search.empty?
      person = Person.where("lower(first_name) LIKE ?", "%#{search.downcase}%")
      if person.count == 0 #no result
        return nil
      end
    else
      return nil
    end
    return person
  end
end
