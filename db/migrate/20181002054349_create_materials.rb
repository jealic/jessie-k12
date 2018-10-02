class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :m_name
      t.integer :subject_tag_id
      t.integer :user_id
      t.timestamps
    end
  end
end
