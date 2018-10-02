class CreateSubjectTags < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_tags do |t|
      t.string :name
      t.timestamps
    end
  end
end
