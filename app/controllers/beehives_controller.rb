class BeehivesController < ApplicationController

    get "/beehives" do
        Beehive.all.to_json(:include => :owner, :except => :owner_id)
    end

end