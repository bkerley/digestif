class EnjoyableController < ApplicationController
  def diversion
    authenticate_or_request_with_http_digest("Diversions") do |username, verifier|
      # dhh/secret
      username == "dhh" && verifier['7912bf14316c02bdd0eaf32229fdd30d']
    end
  end

end
