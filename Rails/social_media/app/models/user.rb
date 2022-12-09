class User < ApplicationRecord
    has_many :posts

    validates :name, presence: true,uniqueness: true
    validates :email, presence: true,uniqueness: true

    

    def recent_post
        #posts.all.post_message
       # posts.sort(created_at).last
       posts.order(id: :desc).limit(3)     
      
    end
end
