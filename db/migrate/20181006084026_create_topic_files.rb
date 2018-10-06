class CreateTopicFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :topic_files do |t|
      t.integer :topic_id
      t.integer :teachingfile_id

      t.timestamps
    end
  end
end
