#!/usr/bin/env ruby

class NotificationEmail
  attr_reader :message

    def initialize(message)
    @message = message
  end

  def send_notification()
    puts "Sending notification: #{@message}"
  end
end