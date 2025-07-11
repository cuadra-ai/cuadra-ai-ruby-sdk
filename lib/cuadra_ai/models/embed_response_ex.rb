# cuadra_ai
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module CuadraAi
  # EmbedResponseEx Model.
  class EmbedResponseEx < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Embed id
    # @return [String]
    attr_accessor :id

    # This is the token usage result of your request
    # @return [UsageEx]
    attr_accessor :usage

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['usage'] = 'usage'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        usage
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, usage: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @usage = usage unless usage == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      usage = UsageEx.from_hash(hash['usage']) if hash['usage']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      EmbedResponseEx.new(id: id,
                          usage: usage,
                          additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, usage: #{@usage}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, usage: #{@usage.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
