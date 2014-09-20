require 'octokit'

module Transient
  module Collectors
    class GitHubCollector
      def collect
        # XXX: Octokit doesn't have conditional request support. x_X
        Octokit.user_events('svankmajer').map do |event|
          Transient::Activities::GitHubActivity.new(parsed_event(event))
        end
      end

      private

      def user_events
        Octokit.user_events('svankmajer')
      end

      def parsed_event(event)
        # no-op
      end
    end
  end
end
