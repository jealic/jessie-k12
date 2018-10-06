class TeachingfilesController < ApplicationController



  private

  def teachingfile_params
    params.require(:teachingfile).permit(:name,:material_id,:plan_id, :user_id, {attachments: []})
  end
end
