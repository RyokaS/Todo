class Task < ApplicationRecord
    validates :content, presence: true
    validates :status, presence: true
end
