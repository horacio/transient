module Transient
  module Collectors
    class GitHubCollector
      attr_reader :collector

      def initialize(collector = Octokit)
        @collector = collector

        set_caching_middleware
      end

      def collect
        user_events.map do |event|
          Transient::Activities::GitHubActivity.new(event)
        end
      end

      private

      def user_events
        collector.user_events('svankmajer')
      end

      def set_caching_middleware
        middleware = Faraday::RackBuilder.new do |builder|
          builder.use :http_cache, store: Transient::Stores::DefaultStore
          builder.use Octokit::Response::RaiseError
          builder.adapter Faraday.default_adapter
        end

        collector.middleware = middleware
      end
    end
  end
end
