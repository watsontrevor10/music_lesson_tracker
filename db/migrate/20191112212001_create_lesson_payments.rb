class CreateLessonPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_payments do |t|
      t.string :type 
      t.float :amount
      t.date :date 
      t.date :hours

      t.timestamps
    end
  end
end
