class Expense < ActiveRecord::Base
  belongs_to :category
    validates :category, :concept, :amount, presence: true
end
