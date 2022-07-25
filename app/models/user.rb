class User < ApplicationRecord
  has_secure_password
  rolify
  # it { should validate_presence_of(:email) }
  # it { should validate_uniqueness_of(:email) }
  validates_presence_of :email
  validates_uniqueness_of :email
end
