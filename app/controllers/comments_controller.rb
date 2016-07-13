class CommentsController < ApplicationController
	def create
    @report = Report.find(params[:report_id])
    @comment = @report.comments.create(comment_params)
    CommentsMailer.comment_notification(@comment, @report).deliver
    flash[:success] = 'WIP shall notify the relevant personnel.'
    redirect_to report_path(@report)
  end
 	
  def destroy
    @report = Report.find(params[:report_id])
    @comment = @report.comments.find(params[:id])
    @comment.destroy
    redirect_to report_path(@report)
  end

  private
    def comment_params
      params.require(:comment).permit(:title, :text)
    end
end
