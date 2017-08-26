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

# Unit tests for Teleswagger::ParseMode
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ParseMode' do
  before do
    # run before each test
    @instance = Teleswagger::ParseMode.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ParseMode' do
    it 'should create an instance of ParseMode' do
      expect(@instance).to be_instance_of(Teleswagger::ParseMode)
    end
  end
end

