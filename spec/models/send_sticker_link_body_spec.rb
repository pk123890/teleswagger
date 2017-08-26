=begin
#Telegram bot API

#This is a swagger defenition for [Telegram bot API](https://core.telegram.org/bots/api). 

OpenAPI spec version: 3.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Teleswagger::SendStickerLinkBody
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SendStickerLinkBody' do
  before do
    # run before each test
    @instance = Teleswagger::SendStickerLinkBody.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SendStickerLinkBody' do
    it 'should create an instance of SendStickerLinkBody' do
      expect(@instance).to be_instance_of(Teleswagger::SendStickerLinkBody)
    end
  end
  describe 'test attribute "chat_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "sticker"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "disable_notification"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reply_to_message_id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "reply_markup"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

