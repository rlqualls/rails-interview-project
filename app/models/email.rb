class Email < ActiveRecord::Base
  belongs_to :user

  validates :address, presence: true,
                      uniqueness: true,
                      format: {
                        with: /\A[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\Z/,
                        message: "e-mail must be formatted correctly"
                      }
end
