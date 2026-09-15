#!/usr/bin/env ruby


require_relative 'notification_sms'

class Main < NotificationSMS


#  def send_notification()
#     puts "Sending notification: #{@message}"
#   end


end



 carta = Main.new("Hello, this is a notification message.")
  carta.send_notification()