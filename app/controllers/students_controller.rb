class StudentsController < ApplicationController
def new
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

private 
def student_params
    params.require(:student11).permit(:title,:text)
end
end
