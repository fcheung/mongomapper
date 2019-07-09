# encoding: UTF-8
module MongoMapper
  module Extensions
    module Binary
      def to_mongo(value)
        if value.instance_of?(::BSONV1::Binary)
          value
        else
          value.nil? ? nil : ::BSONV1::Binary.new(value)
        end
      end

      def from_mongo(value)
        value
      end
    end
  end
end

class Binary
  extend MongoMapper::Extensions::Binary
end