=begin
#Telegram bot API

#This is a swagger defenition for [Telegram bot API](https://core.telegram.org/bots/api). 

OpenAPI spec version: 3.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module Teleswagger

  class InlineQueryResultDocument
    attr_accessor :type

    attr_accessor :id

    attr_accessor :title

    attr_accessor :caption

    attr_accessor :document_url

    attr_accessor :mime_type

    attr_accessor :description

    attr_accessor :reply_markup

    attr_accessor :input_message_content

    attr_accessor :thumb_url

    attr_accessor :thumb_width

    attr_accessor :thumb_height


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'id' => :'id',
        :'title' => :'title',
        :'caption' => :'caption',
        :'document_url' => :'document_url',
        :'mime_type' => :'mime_type',
        :'description' => :'description',
        :'reply_markup' => :'reply_markup',
        :'input_message_content' => :'input_message_content',
        :'thumb_url' => :'thumb_url',
        :'thumb_width' => :'thumb_width',
        :'thumb_height' => :'thumb_height'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'InlineType',
        :'id' => :'String',
        :'title' => :'String',
        :'caption' => :'String',
        :'document_url' => :'String',
        :'mime_type' => :'String',
        :'description' => :'String',
        :'reply_markup' => :'InlineKeyboardMarkup',
        :'input_message_content' => :'Object',
        :'thumb_url' => :'String',
        :'thumb_width' => :'Integer',
        :'thumb_height' => :'Integer'
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

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'caption')
        self.caption = attributes[:'caption']
      end

      if attributes.has_key?(:'document_url')
        self.document_url = attributes[:'document_url']
      end

      if attributes.has_key?(:'mime_type')
        self.mime_type = attributes[:'mime_type']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'reply_markup')
        self.reply_markup = attributes[:'reply_markup']
      end

      if attributes.has_key?(:'input_message_content')
        self.input_message_content = attributes[:'input_message_content']
      end

      if attributes.has_key?(:'thumb_url')
        self.thumb_url = attributes[:'thumb_url']
      end

      if attributes.has_key?(:'thumb_width')
        self.thumb_width = attributes[:'thumb_width']
      end

      if attributes.has_key?(:'thumb_height')
        self.thumb_height = attributes[:'thumb_height']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @title.nil?
        invalid_properties.push("invalid value for 'title', title cannot be nil.")
      end

      if @document_url.nil?
        invalid_properties.push("invalid value for 'document_url', document_url cannot be nil.")
      end

      if @mime_type.nil?
        invalid_properties.push("invalid value for 'mime_type', mime_type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @id.nil?
      return false if @title.nil?
      return false if @document_url.nil?
      return false if @mime_type.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          id == o.id &&
          title == o.title &&
          caption == o.caption &&
          document_url == o.document_url &&
          mime_type == o.mime_type &&
          description == o.description &&
          reply_markup == o.reply_markup &&
          input_message_content == o.input_message_content &&
          thumb_url == o.thumb_url &&
          thumb_width == o.thumb_width &&
          thumb_height == o.thumb_height
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, id, title, caption, document_url, mime_type, description, reply_markup, input_message_content, thumb_url, thumb_width, thumb_height].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
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
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
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
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
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
