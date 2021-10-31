class Owner < ActiveRecord::Base
    has_many :beehives

    def full_name
        self.first_name + " " + self.last_name
    end
end