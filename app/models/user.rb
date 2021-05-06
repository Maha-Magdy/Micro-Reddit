class User < ApplicationRecord
  validates :name, presence:true, length: { minimum: 4 }, length: { minimum: 2 }
  
end
