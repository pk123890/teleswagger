=begin
#Telegram bot API

#This is a swagger defenition for [Telegram bot API](https://core.telegram.org/bots/api). 

OpenAPI spec version: 3.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for Teleswagger::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = Teleswagger::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(Teleswagger::UsersApi)
    end
  end

  # unit tests for get_me
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse200]
  describe 'get_me test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_profile_photos
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param user_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :offset 
  # @option opts [Integer] :limit 
  # @return [InlineResponse2001]
  describe 'get_user_profile_photos test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
