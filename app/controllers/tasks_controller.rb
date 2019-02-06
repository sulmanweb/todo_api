# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :authenticate_user
  before_action :set_task, only: %i[show update destroy done not_done]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = current_user.tasks.all.order(id: :desc)
    success_task_index
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    success_task_show
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      success_task_create
    else
      error_task_save
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    if @task.update(task_params)
      success_task_show
    else
      error_task_save
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    success_task_destroy
  end

  def done
    if @task.update(status: true)
      success_task_show
    else
      error_task_save
    end
  end

  def not_done
    if @task.update(status: false)
      success_task_show
    else
      error_task_save
    end
  end

  protected

  def success_task_index
    render status: :ok, template: 'tasks/index.json.jbuilder'
  end

  def success_task_show
    render status: :ok, template: 'tasks/show.json.jbuilder'
  end

  def success_task_create
    render status: :created, template: 'tasks/show.json.jbuilder'
  end

  def success_task_destroy
    render status: :no_content, json: {}
  end

  def error_task_save
    render status: :unprocessable_entity, json: { errors: @task.errors.full_messages }
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.permit(:body)
  end
end
