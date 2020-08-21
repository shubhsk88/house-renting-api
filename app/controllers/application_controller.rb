class ApplicationController < ActionController::API
    def json_response(object, status = :ok)
        render json: object, status: status
      end
end
