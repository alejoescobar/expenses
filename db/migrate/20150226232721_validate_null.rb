class ValidateNull < ActiveRecord::Migration
  def change
    change_column_null :categories, :name, false
    change_column_null :expenses, :date, false
    change_column_null :expenses, :concept, false
    change_column_null :expenses, :amount, false
    change_column_null :expenses, :category_id  , false
  end
end
