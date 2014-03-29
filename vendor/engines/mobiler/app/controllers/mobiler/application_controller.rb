require 'gmail'

module Mobiler
  class ApplicationController < ActionController::Base
    def email_list
      uname = 'vitalyp@softwareplanet.uk.com'
      upass = ENV['gmail_password']  # <= set password in environment variable `gmail_password`
      @gmail = Gmail.new(uname, upass)
      @inbox_count = @gmail.inbox.count
      @unread_count = @gmail.inbox.count(:unread)
      @read_count = @gmail.inbox.count(:read)
      @emails = @gmail.inbox.emails
    end

  end
end
