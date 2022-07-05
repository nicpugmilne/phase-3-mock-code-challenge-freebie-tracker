class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev, item_name, value)
    Freebie.create(item_name :item_name, value: value, dev: dev, company: self)
  end

  def self.oldest_company
    Company.all.order(:founding_year).first
  end
end

#### Company

# - `Company#give_freebie(dev, item_name, value)`
#   - takes a `dev` (an instance of the `Dev` class), an `item_name` (string), and a `value`
#     as arguments, and creates a new `Freebie` instance associated with this
#     company and the given dev
# - `Company.oldest_company`
#   - returns the `Company` instance with the earliest founding year
