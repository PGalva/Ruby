#!/usr/bin/env ruby


class NotificationSMS
  attr_accessor :message

  def initialize(message)
    @message = message
  end

  
  def send_notification()
    puts "Sending notification: #{@message}"
  end
  
end