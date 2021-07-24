class ApplicationController < ActionController::API
    def encode_token(data)
        JWT.encode(data, "supersayiangodsupersayian", "HS256")
    end
end
