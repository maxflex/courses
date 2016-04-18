class RequestNotifier < ApplicationMailer
  default from: 'Ruby Courses <info@ruby.courses>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.request_notifier.new.subject
  #
  def new(request)
    @request = request
    mail to: "makcyxa-k@yandex.ru", subject: 'Новая заявка на курсы'
  end
end
