class DashboardMailer < ApplicationMailer
def reminder_email
    @channel = params[:channel]

    mail(to: <ADMIN_EMAIL>, subject: "You show a details!")
  end
end
