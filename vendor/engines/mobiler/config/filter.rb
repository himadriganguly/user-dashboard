require 'yaml'

MOBILER_CONFIG = YAML.load "

default_email: &default_email
  from_addr:
  skip_mail: no
  images: yes
  text: yes

skipped_email: &skipped_email
  skip_mail: yes

private_email:
  <<: *default_email

acc_online_notifications:
  <<: *skipped_email
  from_addr: notifications@basecamp.com
";


module Mobiler

  FILTER_STATUS_SHOW_EMAIL = -1
  FILTER_STATUS_SKIP_EMAIL = -2

  class Filter

    def self.process(email)
      from_addr = email.from.first rescue email.from
      email_subject = email.subject
      MOBILER_CONFIG.keys.each do |filter_name|
        _from_addr = MOBILER_CONFIG.values_at(filter_name)[0]['from_addr'] || []
        _from_addr = [_from_addr] unless _from_addr.is_a?( Array )
        _skip_mail = MOBILER_CONFIG.values_at(filter_name)[0]['skip_mail']
        #..complete with other filter options later..
        return FILTER_STATUS_SKIP_EMAIL if ( _from_addr.include?(from_addr) && _skip_mail)
      end
      return FILTER_STATUS_SHOW_EMAIL
    end

  end
end



