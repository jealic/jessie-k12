class AddAttachmentsToTeachingfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :teachingfiles, :attachments, :string
  end
end
