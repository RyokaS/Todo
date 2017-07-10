class TodoController < ApplicationController

  def index
    @msg = "ToDoリスト"
    @tsk = Task.all
    # cha = User.find(session[:user_id])
    # obj = Task.find(params[:id])
  end

  def show
    @msg = "ToDoタスク情報"
    @tsk = Task.find(params[:id])
    @tsk_1 = Task.all
    @user = User.all
    # charge = @tsk.charger
    #  for charge do @user.id
    #   if @tsk.charger == @user.name then
    #     charge = @user.id
    #   end
    # end
  end

  def add
    @msg = "ToDoタスクの追加"
    @tsk = Task.new
  end

  def create
    @tsk = Task.new task_params
    # @tsk.status = params['status']
    if @tsk.save then
      redirect_to '/todo'
    else
      @msg = "入力に問題があります"
      render 'add'
    end
  end

  def edit
    @msg = "ToDoタスクの編集"
    @tsk = Task.find(params[:id])
  end

  def update
    obj = Task.find(params[:id])
    obj.update task_params
    redirect_to '/todo'
  end
  
  def delete
    obj = Task.find(params[:id])
    obj.destroy
    redirect_to '/todo'
  end

  private
  def task_params
    params.require(:task).permit(:content, :charger, :ceater, :status, :limit)
  end
  
end
