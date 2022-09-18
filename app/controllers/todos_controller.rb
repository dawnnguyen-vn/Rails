class TodosController < ApplicationController
    def index
        @todos = Todo.all
    end

    def create

        @todo = Todo.new(post_params)

        if @todo.save
            respond_to do |format|
                format.js
            end
        else
            render json: {
              error: @todo.errors.messages,
              status: 500
            }, status: 500
        end
    end

    def destroy
        @id = params[:id]
        @todo = Todo.find(@id);
        if @todo.nil?
            render json: {
                error: @todo.errors.messages,
                status: 500
            }, status: 500
        end        
        if @todo.destroy
            respond_to do |format|
                format.js
            end
        else
            render json: {
              error: @todo.errors.messages,
              status: 500
            }, status: 500
        end
    end

    def completed
        @id = params[:id]
        @todo = Todo.find(@id);
        if @todo.update_attribute(:completed, !@todo.completed)
            
        else
            render json: {
              error: @todo.errors.messages,
              status: 500
            }, status: 500
        end
    end

    def update
        @id = params[:id]
        @todo = Todo.find(@id);
        if @todo.update(post_params)
            respond_to do |format|
                format.js
            end
        else
            render json: {
              error: @todo.errors.messages,
              status: 500
            }, status: 500
        end
    end

    def edit
        @id = params[:id]
        @todo = Todo.find(@id);
        if @todo.present?
            respond_to do |format|
                format.js
            end
        else
            render json: {
              error: @todo.errors.messages,
              status: 500
            }, status: 500
        end
    end

    private

    def post_params
      params.permit :title, :priority, :time
    end

end
