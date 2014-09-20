require 'spec_helper'

describe Transient do
  describe Transient::Streams::GitHubStream do
    describe '#activities' do
      it 'returns a list of activities' do
        stream = Transient::Streams::GitHubStream.new
        expect(stream.events).to be_an(Array)
      end
    end
  end
end
