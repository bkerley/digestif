class EnjoyableController < ApplicationController
  def diversion
    authenticate_or_request_with_http_digest("Diversions") do |username, verifier|
      # username:realm:password
      username == "dhh" && verifier[digest_credentials('dhh', 'secret', 'Diversions')]
    end
  end

end
