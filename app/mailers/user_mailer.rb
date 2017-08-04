class UserMailer < ApplicationMailer

	def welcome(user, expenses)
		@user = user
		@expenses = expenses
		# mailer
		# mail(to: @user.mail, subject:"blablabla" )
	end

	def confirm_purchase
		
	end
end
