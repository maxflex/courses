class Request < ActiveRecord::Base
  belongs_to :plan
  after_save :send_emails

  private
    def send_emails
      RequestNotifier.new(self).deliver_now
    end
end
