class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :title
      t.boolean :completed
      t.text :question
      t.string :subject
      t.date :date
      t.timestamps
    end
  end
end
