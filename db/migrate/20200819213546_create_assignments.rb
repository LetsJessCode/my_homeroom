class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.boolean :completed
      t.text :question
      t.string :subject
      t.date :date
      t.integer :student_id
      t.index ["student_id"], name: "index_assignments_on_student_id"
      t.timestamps
    end
  end
end
