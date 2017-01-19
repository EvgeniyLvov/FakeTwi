class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :microposts

  validates_presence_of :name #, :on => "", :message => ""
  validates_presence_of :email #, :on => "", :message => ""
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: VALID_EMAIL_REGEX
end