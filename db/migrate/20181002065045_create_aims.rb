class CreateAims < ActiveRecord::Migration[5.1]
  def change
    create_table :aims do |t|
      t.string :name
      t.integer :status, default: 0
      t.integer :topic_id
      t.timestamps
    end
  end
end
