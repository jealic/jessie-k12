class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :p_name
      t.integer :user_id
      t.integer :subject_tag_id
      t.timestamps
    end
  end
end
