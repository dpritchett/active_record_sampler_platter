module ActiveRecordSamplerPlatter
  module MonkeyPatches
    # Equivalent to Array#Sample but usable on
    # ActiveRecord models and relations!
    #
    # Returns a result with two quick queries:
    #
    # > Spree::Product.sample
    #    (4.9ms)  SELECT COUNT(*) FROM "spree_products"
    #    (3.8ms)  SELECT "spree_products".* FROM
    #        "spree_products" LIMIT 1 OFFSET 4132
    #
    # => #<Spree::Product id: 414, name: "...
    #
    def sample
      self.offset(rand(self.count)).first
    end
  end
end

module ActiveRecord
  class Base
    extend ActiveRecordSamplerPlatter::MonkeyPatches
  end

  class Relation
    include ActiveRecordSamplerPlatter::MonkeyPatches
  end
end
