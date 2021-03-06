=begin
#Telegram bot API

#This is a swagger defenition for [Telegram bot API](https://core.telegram.org/bots/api). 

OpenAPI spec version: 3.6

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Teleswagger
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param token bot&#39;s token to authorize the request
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    def get_me(token, opts = {})
      data, _status_code, _headers = get_me_with_http_info(token, opts)
      return data
    end

    # 
    # 
    # @param token bot&#39;s token to authorize the request
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def get_me_with_http_info(token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_me ..."
      end
      # verify the required parameter 'token' is set
      fail ArgumentError, "Missing the required parameter 'token' when calling UsersApi.get_me" if token.nil?
      # resource path
      local_var_path = "/bot{token}/getMe".sub('{format}','json').sub('{' + 'token' + '}', token.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_me\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param token bot&#39;s token to authorize the request
    # @param user_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset 
    # @option opts [Integer] :limit 
    # @return [InlineResponse2009]
    def get_user_profile_photos(token, user_id, opts = {})
      data, _status_code, _headers = get_user_profile_photos_with_http_info(token, user_id, opts)
      return data
    end

    # 
    # 
    # @param token bot&#39;s token to authorize the request
    # @param user_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :offset 
    # @option opts [Integer] :limit 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def get_user_profile_photos_with_http_info(token, user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UsersApi.get_user_profile_photos ..."
      end
      # verify the required parameter 'token' is set
      fail ArgumentError, "Missing the required parameter 'token' when calling UsersApi.get_user_profile_photos" if token.nil?
      # verify the required parameter 'user_id' is set
      fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.get_user_profile_photos" if user_id.nil?
      # resource path
      local_var_path = "/bot{token}/getUserProfilePhotos".sub('{format}','json').sub('{' + 'token' + '}', token.to_s)

      # query parameters
      query_params = {}
      query_params[:'user_id'] = user_id
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user_profile_photos\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
