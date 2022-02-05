class Work < ApplicationRecord
  has_many :images, dependent: :destroy
end
