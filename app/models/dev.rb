# # Built in active record associations
# - `Dev#freebies`
#   - returns a collection of all the freebies that the Dev has collected
# - `Dev#companies`
#   - returns a collection of all the companies that the Dev has collected
#     freebies from

class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  # - `Dev#received_one?(item_name)`
  #   - accepts an `item_name` (string) and returns true if any of the freebies
  #     associated with the dev has that `item_name`, otherwise returns false

  def received_one?(item_name)
    self.freebies.find_by(item_name: item_name) ? true : false
  end

  # My solution above works, but the suggested solution was:
  # def received_one?(item_name)
  #   self.freebies.any? do |freebie|
  #     freebie.item_name == item_name
  #   end
  # end

  def give_away(dev, freebie)
    freebie.update(dev: dev) unless freebie.dev != self
  end

  # - `Dev#give_away(dev, freebie)`
  #   - accepts a `Dev` instance and a `Freebie` instance, changes the freebie's dev
  #     to be the given dev; your code should only make the change if the freebie
  #     belongs to the dev who's giving it away
end
