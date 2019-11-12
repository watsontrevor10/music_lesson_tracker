class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :subject 
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.text :description
      t.string :calendar_id

      t.timestamps
    end
  end
end
