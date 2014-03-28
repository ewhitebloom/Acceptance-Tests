class Contact < ActiveRecord::Base
  validates :email, presence: true
  validates :subject, presence: true
  validates :description, presence: true
  validates :first, presence: true
  validates :last, presence: true
end
