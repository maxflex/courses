# Preview all emails at http://localhost:3000/rails/mailers/request_notifier
class RequestNotifierPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/request_notifier/new
  def new
    RequestNotifier.new
  end

end
