class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.references :category, index: true
      t.datetime :date
      t.text :concept
      t.integer :amount

      t.timestamps null: false
    end
    add_foreign_key :expenses, :categories
  end
end
