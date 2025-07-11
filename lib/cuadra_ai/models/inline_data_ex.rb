# cuadra_ai
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CuadraAi
  # Input Reference is the name of the file, if you're request is from a type
  # other than text, and it's required for most types. It has to contain the
  # same name as the file attached in the request.
  class InlineDataEx < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mime_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mime_type'] = 'mimeType'
      @_hash['data'] = 'data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        mime_type
        data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(mime_type: SKIP, data: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @mime_type = mime_type unless mime_type == SKIP
      @data = data unless data == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mime_type = hash.key?('mimeType') ? hash['mimeType'] : SKIP
      data = hash.key?('data') ? hash['data'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      InlineDataEx.new(mime_type: mime_type,
                       data: data,
                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} mime_type: #{@mime_type}, data: #{@data}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} mime_type: #{@mime_type.inspect}, data: #{@data.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
