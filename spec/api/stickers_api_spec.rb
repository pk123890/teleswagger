=begin
#Telegram bot API

#This is a swagger defenition for [Telegram bot API](https://core.telegram.org/bots/api). 

OpenAPI spec version: 3.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for Teleswagger::StickersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StickersApi' do
  before do
    # run before each test
    @instance = Teleswagger::StickersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StickersApi' do
    it 'should create an instance of StickersApi' do
      expect(@instance).to be_instance_of(Teleswagger::StickersApi)
    end
  end

  # unit tests for add_sticker_to_set
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param user_id 
  # @param name 
  # @param png_sticker 
  # @param emojis 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :mask_position Serialized to JSON MaskPosition
  # @return [ResponseBool]
  describe 'add_sticker_to_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_sticker_to_set_link
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [ResponseBool]
  describe 'add_sticker_to_set_link test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_new_sticker_set
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param user_id 
  # @param name 
  # @param title 
  # @param png_sticker 
  # @param emojis 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :is_masks 
  # @option opts [String] :mask_position Serialized to JSON MaskPosition
  # @return [File]
  describe 'create_new_sticker_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_new_sticker_set_link
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'create_new_sticker_set_link test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_sticker_from_set
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param sticker 
  # @param [Hash] opts the optional parameters
  # @return [ResponseBool]
  describe 'delete_sticker_from_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_sticker_set
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param name 
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2009]
  describe 'get_sticker_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_sticker_position_in_set
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param sticker 
  # @param position 
  # @param [Hash] opts the optional parameters
  # @return [ResponseBool]
  describe 'set_sticker_position_in_set test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_sticker_file
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param user_id 
  # @param png_sticker 
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'upload_sticker_file test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for upload_sticker_file_link
  # 
  # 
  # @param token bot&#39;s token to authorize the request
  # @param user_id 
  # @param png_sticker 
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'upload_sticker_file_link test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
