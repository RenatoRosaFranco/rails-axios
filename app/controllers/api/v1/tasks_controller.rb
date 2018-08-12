# frozen_string_sanatizer: true
module API
	module V1
		class TasksController < ApplicationController
			before_action :set_task, only: [:show, :update, :destroy]
			rescue_from ActiveRecord::RecordNotFound, with: :not_found

			# GET /tasks for all tasks
			#  return all tasks
			def index
				@tasks = Task.all 
				render json: @tasks, status: 200
			end

			# POST /tasks [:params] for create task
			# create a task by passing params
			def create
				@task = Task.create(task_params)
				render json: @task, status: 201
			end

			# GET /tasks/:id [:param] for a single task
			# return a single task passing id
			def show
				render json: @task, status: 200
			end

			# PUT/PATCH /tasks/:id [:param] for update task
			# update a single task by passing params
			def update
				@task.update(task_params)
				render json: @task, status: 200
			end

			# DELETE /tasks/:id [:param] for destroy a task
			# destroy a single task by passing params
			def destroy
				@task.destroy
				head :no_content
			end

			private
				def set_task
					@task = Task.find(params[:id])
				end

				def task_params
					params.permit(:name, :description)
				end

				def not_found
					render json: {status: 200}, status: 204
				end
		end	
	end
end