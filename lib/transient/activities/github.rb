module Transient
  module Activities
    class GitHubActivity
      attr_reader :event

      def initialize(event)
        @event = event
      end
    end
  end
end
