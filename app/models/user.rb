class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :microposts

  has_secure_password

  validates_presence_of :name #, :on => "", :message => ""
  validates_presence_of :email #, :on => "", :message => ""
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: VALID_EMAIL_REGEX, if: lambda { |o| o.email.present? }

  validates_presence_of :password
  validates_length_of :password, {minimum: 6, maximum:14}
  validates_confirmation_of :password, if: lambda { |o| o.password.present? }

end