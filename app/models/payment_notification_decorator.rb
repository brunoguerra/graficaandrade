Spree::PaymentNotification.class_eval do
    
  def self.create_from_params(params)
    email_token = Spree::PaymentMethod.select([:preferred_token, :preferred_email]).where(type: "Spree::PaymentMethod::PagSeguroMethod").first
    email = email_token.preferred_email
    token = email_token.preferred_token
    notification_code = params[:notificationCode]
    notification = ::PagSeguro::Notification.new(email, token, notification_code)

    self.create!(
      params: params,
      order_id: notification.id,
      status: notification.status,
      transaction_id: notification.transaction_id,
      notification_code: notification_code
    )
    
    notification
  end
end