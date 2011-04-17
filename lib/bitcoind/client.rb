module Bitcoind
  class Client
    def initialize(user, pass)
      @endpoint = "http://#{user}:#{pass}@localhost:8332"
    end

    def balance
      body = {'method'=>'getbalance', 'id'=>'jsonrpc'}
      response_json = RestClient.post @endpoint, body.to_json
      response = JSON.parse response_json
      return response['result']
    end
  end
end