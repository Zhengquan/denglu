# -*- encoding: utf-8 -*-
module Denglu
  class Bind < Base
    
    def bind muid, uid, uname, uemail
      req_method = :GET
      req_uri = '/api/v3/bind'
      req_options = {
        :muid => muid,
        :uid => uid,
        :uname => uname,
        :uemail => uemail 
      }
      JSON.parse(request_api(req_method, req_uri, req_options))
    end
    
    def unbind muid
      req_method = :GET
      req_uri = '/api/v3/unbind'
      req_options = {
        :muid => muid
      }
      JSON.parse(request_api(req_method, req_uri, req_options))
    end
    
    def all_unbind muid, uid=nil
      unless muid || uid
        rails "You should specify muid or uid!"
      end
      req_method = :GET
      req_uri = '/api/v3/all_unbind'
      req_options = {
        :muid => muid,
        :uid => uid
        }.delete_if { |k, v| v.nil? }
      JSON.parse(request_api(req_method, req_uri, req_options))
    end
     
    def bind_info muid, uid
      req_method = :GET
      req_uri = '/api/v3/bind_info'
      req_options = {
        :muid => muid,
        :uid => uid 
      }
      JSON.parse(request_api(req_method, req_uri, req_options))
    end
  end
end