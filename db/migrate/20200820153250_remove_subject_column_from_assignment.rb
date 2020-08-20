class RemoveSubjectColumnFromAssignment < ActiveRecord::Migration[6.0]
  def change
      remove_column :assignments, :subject, :string
      add_column :assignments, :subject_id, :integer
  end
end
