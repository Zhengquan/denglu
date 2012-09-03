# -*- encoding: utf-8 -*-

module Denglu
  class Media < Base
    def info
      req_method = :GET
      req_uri = '/api/v3/get_media'
      req_options = {
      }
      JSON.parse request_api(req_method, req_uri, req_options)
    end
  end
end