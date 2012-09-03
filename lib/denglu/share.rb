# -*- encoding: utf-8 -*-
module Denglu
  class Share < Base
    
    def send_login_feed muid
      req_method = :GET
      req_uri = '/api/v3/send_login_feed'
      req_options = {
        :muid => muid
      }
      JSON.parse(request_api(req_method, req_uri, req_options))
    end
    
    def share muid, content, url, uid=nil, imageurl=nil, videourl=nil
      req_method = :GET
      req_uri = '/api/v4/share'
      req_options = {
        :muid => muid,
        :content => content,
        :url => url,
        :uid => uid,
        :imageurl => imageurl,
        :videourl => videourl
      }.delete_if { |k, v| v.nil? }
      JSON.parse(request_api(req_method, req_uri, req_options))
    end
  end  
end