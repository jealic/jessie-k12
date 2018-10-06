class RemoveAttachmentInTeachingfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :teachingfiles, :attachment
  end
end
