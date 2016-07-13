class CommentsMailer < ApplicationMailer
	default from: 'example@gmail.com'

  def comment_notification(comment, report)
    @comment = comment
    @report = report 
    mail(to: 'example@gmail.com', 
    	subject: '[WIP] Somebody has commented on your report')
	end
end
