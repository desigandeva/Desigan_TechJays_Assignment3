class StudentController < ApplicationController
    # check logged in user
    before_action :authenticate_user!
    # load resource
    load_and_authorize_resource

    # GET /student
    def index
    end
    
    # GET /student/new
    def new
    end
    
    # POST /student
    def create
        @student.user_id = current_user.id
        if @student.save
            redirect_to student_index_path
        else
            redirect_to new_student_path
        end
    end
    
    # GET /student/:id
    def edit
    end
    
    # PUT/PATCH /student/:id
    def update
        @student.update(student_params)
        redirect_to student_path
    end
    
    # GET /student/:id
    def show
    end
    
    # DELETE /student/:id
    def destroy
        @student.destroy
        redirect_to student_index_path
    end

    private
    # get student parameters
    def student_params
        params.require(:student).permit(:name,:dob,:address,:phone)
    end
end
