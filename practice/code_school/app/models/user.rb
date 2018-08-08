class User < ApplicationRecord
    belongs_to :school
    has_one :profile
    has_many :projects

end
