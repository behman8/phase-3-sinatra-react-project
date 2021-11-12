class OwnerController < ApplicationController

    get "/owners" do
        Owner.all.to_json
    end
end