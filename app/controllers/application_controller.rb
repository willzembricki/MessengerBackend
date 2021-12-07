class ApplicationController < ActionController::API
    
    # setting up encoding and decoding for the JWT token for authorization 
    def encode(payload)
        JsonWebToken.encode(payload)
    end
    
    def decode(token)
        JsonWebToken.decode(token)
    end    
end
