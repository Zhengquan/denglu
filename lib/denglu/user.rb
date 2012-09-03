# -* encoding: utf-8 -*-

module Denglu

  class User < Base
    def info(token=nil)
      unless not token.nil?
        raise "The token should not be nil!"
      end
      req_method = :GET
      req_uri = '/api/v4/user_info'
      req_options = {
        :token => token
      }
      JSON.parse(request_api(req_method, req_uri, req_options))
    end
  end
end
    