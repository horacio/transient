module Transient
  module Streams
    class GitHubStream
      attr_reader :collector

      def initialize(collector = Transient::Collectors::GitHubCollector.new)
        @collector = collector
      end

      def events
        collector.collect
      end
    end
  end
end
