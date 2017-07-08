class TodoController < ApplicationController

  def index
    @msg = "ToDoリスト"
    @tsk = Task.all
    # cha = User.find(session[:user_id])
    # obj = Task.find(params[:id])
  end

# def sort
#   todo = self.dup
#   (length-1).times do
#     (length-1).times do |i|
#       if todo[j] < todo[j+1]
#         todo[i+1], todo[i] = todo[i], todo[i+1]
#         # min=todo[j];
# 			  # todo[j] = todo[j+1];
# 			  # todo[j+1] = min;
#         end
#       end
#     end
#     self.replace(todo)
#   end

  def sort
  l = todo.length
  for i in 1..l do
    for j in 1..(l-i) do
      if todo[j-1] > todo[j]
        t = todo[j]
        todo[j] = todo[j - 1]
        todo[j - 1] = t
      end
    end
  end
  return todo
end



  def show
    @msg = "ToDoタスク情報"
    @tsk = Task.find(params[:id])
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

  # def lineUp
  #   object = Task.find(params[:id])
  #   if object.status == "ToDo" then
  #     @dis = object.id
  #   elsif object.status == "Doing" then
  #     @dis = object.id
  #   elsif object.status == "Done" then
  #     @dis = object.id
  #   end
  # end

  private
  def task_params
    params.require(:task).permit(:content, :charger, :ceater, :status, :limit)
  end
  
end
