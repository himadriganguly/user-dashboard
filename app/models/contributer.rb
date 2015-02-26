class Contributor < ActiveRecord::Base
  has_one :user, as: :role, dependent: :destroy
end
