require "active_record"
class User < ApplicationRecord
end

#class CreateUsers < active_record::migrations[5.1]
# def change
# create_table :users do |t|
#   t.string :name
#   t.string :email
#   t.timestamps
# end
#   