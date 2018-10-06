class LessonsController < ApplicationController

  def index
    @user = User.find_by_id(params[:user_id])
    @lessons = @user.lessons.all
    @todos = @user.todos.all
    if @user == current_user
      
      @lesson = @user.lessons.new
      
      @todo = @user.todos.new
    end
  end


  private

  # 設定使用者
  def set_lesson
    @lesson = Lesson.find_by_id(params[:id])
  end

  # 顯示使用者所擁有的課表
  def set_lessons
    # pluck 方法，輸出 array，第一步就用 each do 展開的話，後面就難收拾了
    subject_ids = Subject.where(user_id: @user).pluck(:id)
    # 疊代
    topic_ids = Topic.where(subject_id: subject_ids).pluck(:id)
    # topic_id 欄位，輸入 id array，輸出 lessons 的 ActiveRecord，不需要用 id 各別宣告再收集起來。
    @lessons = Lesson.where(topic_id: topic_ids, event_type: "lesson")
  end

  # 刪除整學期的課程，待利用
  def set_subject_of_lesson
  lesson = Lesson.find_by_id(params[:id])
  # 注意：不用路由 params 也可將 id 傳入，但括號內不可使用"實例變數"。此方法可避免巢狀路由過於複雜。
  topic = Topic.find_by_id(lesson.topic_id)
  @subject = Subject.find_by_id(topic.subject_id)
  end

  def set_user
    @user = User.find_by_id(params[:user_id])
  end

  def set_author
    @user = current_user
  end

  def lesson_params
    params.require(:lesson).permit(:name, :start_time,'start_time(1i)', 'start_time(2i)', 'start_time(3i)', 'start_time(4i)', 'start_time(5i)', 'end_time(1i)', 'end_time(2i)', 'end_time(3i)', 'end_time(4i)', 'end_time(5i)', :period, :frequency, :commit_button, :event_type, :classroom)
  end
    

end
