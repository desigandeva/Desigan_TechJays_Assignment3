class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.date :dob
      t.string :address
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
