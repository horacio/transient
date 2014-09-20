module Transient
  module Stores
    class DefaultStore
      @cache = Drawer.new(Transient.settings[:default_cache_location])

      class << self
        attr_reader :cache
      end

      def self.write(key, value)
        cache.set(key, value)
      end

      def self.read(key)
        cache.get(key)
      end
    end
  end
end
