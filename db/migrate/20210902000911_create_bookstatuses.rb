class CreateBookstatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :bookstatuses do |t|
      t.string :book_name
      t.string :available

      t.timestamps
    end
  end
end
