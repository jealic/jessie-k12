class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.text :feedback
      t.datetime :start_time
      t.datetime :end_time

      t.integer :lesson_id
      t.timestamps
    end
  end
end
