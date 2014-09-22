#
# from http://jeffgardner.org/2011/08/04/rails-string-to-boolean-method/
#
class String
  def to_bool
    return true if self == true || self =~ (/(true|t|yes|y|1)$/i)
    return false if self == false || self.blank? || self =~ (/(false|f|no|n|0)$/i)
    raise ArgumentError.new("invalid value for Boolean: \"#{self}\"")
  end

  def to_boolean_param
    to_bool ? "1" : "0"
  end

  def bin_to_hex(encoding = 'UTF-8')
    String.bin_to_hex(self, encoding)
  end

  def hex_to_bin(encoding = 'UTF-8')
    String.hex_to_bin(self, encoding)
  end

  class << self
    def to_boolean_param other
      other.to_s.to_boolean_param
    end

    def bin_to_hex(s, encoding = 'UTF-8')
      enc = Encoding.find(encoding)
      s.encode(enc).unpack('H*').first
    end

    def hex_to_bin(s, encoding = 'UTF-8')
      enc = Encoding.find(encoding)
      s.scan(/../).map { |x| x.hex }.pack('c*').force_encoding(enc)
    end
  end
end
