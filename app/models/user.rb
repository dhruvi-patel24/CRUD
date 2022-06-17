class User < ApplicationRecord
    validates :name, presence: true,length: {minimum:2, maximum:100}, format: { with: /\A[a-zA-Z," "]*\z/,
        message: "only letters allowed" }
    validates :age, presence: true,  numericality: true
    validates :gender, presence: true

end
