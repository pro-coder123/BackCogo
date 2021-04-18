class Student < ApplicationRecord
    validates_presence_of :username, :name, :email
end
