module FitTracker
  
  class Runkeeper

    # token = c498f01bb0224fc995a24541c8618e95
    def initialize(client_id, client_secret, token, auth_url = 'https://runkeeper.com/apps/authorize', token_url = 'https://runkeeper.com/apps/token')
      client = OAuth2::Client.new(client_id, client_secret, :site => 'https://api.runkeeper.com/', :authorize_url => auth_url, :token_url => token_url)
      access_token = OAuth2::AccessToken.new(client, token)
    end
    
  end
  
end