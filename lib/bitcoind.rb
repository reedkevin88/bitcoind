require 'json'
require 'rest_client'
require 'active_support/memoizable'

%w{ client account account_hash transaction }.each do |f|
  require File.join(File.dirname(__FILE__), 'bitcoind', f)
end

module Bitcoind
  def self.new(host, port, user, pass)
    return Client.new host, port, user, pass
  end
end
