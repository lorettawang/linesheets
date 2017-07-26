class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true

    def cart_count
        $redis.scard "cart#{id}"
    end
end