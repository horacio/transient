require 'octokit'

module Transient
  module Collectors
    class GitHubCollector
      attr_reader :collector

      def initialize(collector = Octokit)
        @collector = collector
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
    end
  end
end
