class CreateLessonDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_details do |t|
      t.float :cost_per_lesson
      t.float :lesson_duration
      t.string :stage
      t.float :babysitter_wage_per_hour

      t.timestamps
    end
  end
end
