class BeehivesController < ApplicationController

    get "/beehives" do
        Beehive.all.to_json(:include => :owner, :except => :owner_id)
    end

    post "/beehives" do
        owner = Owner.find_or_create_by(first_name: params[:owner_first_name], last_name: params[:owner_last_name])
        beehive = Beehive.new(queen_name: params[:queen_name], type_of_bees: params[:type_of_bees], number_of_boxes: params[:number_of_boxes], owner_id: owner.id)
        if beehive.save
            beehive.to_json(:include => :owner, :except => :owner_id)
        else
            tracks.errors.to_json
        end
    end

end