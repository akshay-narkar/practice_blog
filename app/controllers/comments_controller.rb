class CommentsController < ApplicationController
    def create
        @student12 = Student.find(params[:student_id])
        @comment = @student12.comments.create(comment_params)
        redirect_to students_path(@student12)
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter,:body)
    end
end
