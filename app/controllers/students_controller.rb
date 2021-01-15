class StudentsController < ApplicationController
def new
end

def index 
    @students = Student.all
end

def create
    # render plain: params[:student11].inspect
    @student12 = Student.new(student_params)
    @student12.save
    redirect_to @student12
end

def show
    @student12 = Student.find(params[:id])
end

def edit
    @student12 = Student.find(params[:id])
end

def update 
    @student12 = Student.find(params[:id])
    if @student12.update(student_params)
        redirect_to @student12
    else
        render 'edit'
    end
end

def destroy
    @student12 = Student.find(params[:id])
     @student12.destroy
        redirect_to students_path
    
end

private 
def student_params
    params.require(:student).permit(:title,:text)
end

end