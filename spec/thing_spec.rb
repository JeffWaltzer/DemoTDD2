require 'rspec'
require_relative '../src/thing'

describe 'Thing' do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    let(:mock_response) {
      double(
        :mock_response,
        body: "Mocked text",
        code: 200
      )
    }

    let(:thing) do
      Thing.new
    end

    let(:uri) do
      URI('http://example.com/index.html?limit=10&page=3')
    end

    it 'succeeds' do
      expect(Net::HTTP).to(
        receive(:get_response)
          .with(uri)
          .and_return(mock_response)
      )
      expect(thing.get_example.body).to eq "Mocked text"
    end

  end
end