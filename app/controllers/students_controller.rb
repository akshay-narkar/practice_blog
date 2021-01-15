class StudentsController < ApplicationController
def new
end
def create
    render plain: params[:student11].inspect
end
end
