class TasksController < ApplicationController
	
	
	layout "tasks"
	

def new
	@task = Task.new
end

def show
	@task = Task.find(params[:id])
end

def edit
	@task = Task.find(params[:id])
	@depends = Depend.all
end

def create
	@task = Task.new(task_params)

	if @task.save 

		flash[:notice] = "Task successfully created"
		redirect_to @task
	else
		render 'new'
	end
end

def success

end

def update
	@task = Task.find(params[:id])
	if @task.update(task_params)
		render 'success' 
	else
		render 'edit'
	end
end

def index
	@tasks = Task.all
	@tasks = Task.paginate(page: params[:page], per_page: 4).order('created_at DESC')

	respond_to do |format|
	format.html
    format.csv { send_data @tasks.to_csv(col_sep: ",\t") }
    #format.csv { render text: @tasks.to_csv }
    format.xls #{ send_data @tasks.to_csv(col_sep: "\t") }
end
	
end

def destroy
	@task = Task.find(params[:id])
	@task.destroy

	flash[:notice] = "Task successfully Deleted"
	redirect_to tasks_path

end

private

def task_params
	params.require(:task).permit(:taskName, :projectName, :description, :assignedto, :hours, :priority, :dependsOn, :values, :phase)
end

def depend_params
	params.require(:depend).permit(:name, :task_id)
end

end
