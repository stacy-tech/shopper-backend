class ApplicationController < ActionController::API

    def encode_token(user_id)
        JWT.encode({user_id: user_id})
    end
end
