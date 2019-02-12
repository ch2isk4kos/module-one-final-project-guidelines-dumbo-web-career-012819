class User < ActiveRecord::Base

    has_many :reviews
    has_many :wines, through: :reviews

# has_many :reviews ==
    # def reviews
    #     Review.all.find do |review|
    #         review.user_id == self.id
    #     end
    # end

end
