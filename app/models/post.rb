class Post < ApplicationRecord
    validates :title, presence:true, length: { minimum: 3 }, format: {with: /\A\S+/, message: "cannot begin with white space"}
    validates :body, presence:true, length: { minimum: 10 }

    belongs_to :user
    has_many :comments, dependent: :destroy
end
