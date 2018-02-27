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

require 'date'

module Teleswagger

  class InlineQueryResultPhoto
    attr_accessor :type

    attr_accessor :id

    attr_accessor :photo_url

    attr_accessor :thumb_url

    attr_accessor :photo_width

    attr_accessor :photo_height

    attr_accessor :title

    attr_accessor :caption

    attr_accessor :parse_mode

    attr_accessor :reply_markup

    attr_accessor :input_message_content


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'id' => :'id',
        :'photo_url' => :'photo_url',
        :'thumb_url' => :'thumb_url',
        :'photo_width' => :'photo_width',
        :'photo_height' => :'photo_height',
        :'title' => :'title',
        :'caption' => :'caption',
        :'parse_mode' => :'parse_mode',
        :'reply_markup' => :'reply_markup',
        :'input_message_content' => :'input_message_content'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'InlineType',
        :'id' => :'String',
        :'photo_url' => :'String',
        :'thumb_url' => :'String',
        :'photo_width' => :'Integer',
        :'photo_height' => :'Integer',
        :'title' => :'String',
        :'caption' => :'String',
        :'parse_mode' => :'ParseMode',
        :'reply_markup' => :'InlineKeyboardMarkup',
        :'input_message_content' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'photo_url')
        self.photo_url = attributes[:'photo_url']
      end

      if attributes.has_key?(:'thumb_url')
        self.thumb_url = attributes[:'thumb_url']
      end

      if attributes.has_key?(:'photo_width')
        self.photo_width = attributes[:'photo_width']
      end

      if attributes.has_key?(:'photo_height')
        self.photo_height = attributes[:'photo_height']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'caption')
        self.caption = attributes[:'caption']
      end

      if attributes.has_key?(:'parse_mode')
        self.parse_mode = attributes[:'parse_mode']
      end

      if attributes.has_key?(:'reply_markup')
        self.reply_markup = attributes[:'reply_markup']
      end

      if attributes.has_key?(:'input_message_content')
        self.input_message_content = attributes[:'input_message_content']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @id.nil?
      return false if @photo_url.nil?
      return false if @thumb_url.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          id == o.id &&
          photo_url == o.photo_url &&
          thumb_url == o.thumb_url &&
          photo_width == o.photo_width &&
          photo_height == o.photo_height &&
          title == o.title &&
          caption == o.caption &&
          parse_mode == o.parse_mode &&
          reply_markup == o.reply_markup &&
          input_message_content == o.input_message_content
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, id, photo_url, thumb_url, photo_width, photo_height, title, caption, parse_mode, reply_markup, input_message_content].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Teleswagger.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
