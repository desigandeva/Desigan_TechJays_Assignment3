class TeacherController < ApplicationController
    # check logged in any user
    before_action :authenticate_user!
    # load resource
    load_and_authorize_resource

    # GET /teacher
    def index
    end
    
    # GET /teacher/new
    def new
    end
    
    # POST /teacher
    def create
        @teacher.user_id = current_user.id
        if @teacher.save
            redirect_to teacher_index_path
        else
            redirect_to new_teacher_path
        end
    end
    
    # GET /teachet/:id
    def edit
    end
    
    # PUT/PATCH /teacher/:id
    def update
        @teacher.update(teacher_params)
        redirect_to teacher_path
    end
    
    # GET /teacher/:id
    def show    
    end
    
    # DELETE /teacher/:id
    def destroy
        @teacher.destroy
        redirect_to teacher_index_path
    end

    private
    # get teacher parameters
    def teacher_params
        params.require(:teacher).permit(:name,:dob,:address,:phone)
    end

end
