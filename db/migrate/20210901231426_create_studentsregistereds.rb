class CreateStudentsregistereds < ActiveRecord::Migration[6.1]
  def change
    create_table :studentsregistereds do |t|
      t.string :first_name
      t.string :last_name
      t.string :branch
      t.string :contact
      t.string :book_availed
      t.string :exceeded_duration

      t.timestamps
    end
  end
end
