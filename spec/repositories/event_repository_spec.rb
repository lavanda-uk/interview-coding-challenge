require 'repositories/event_repository'

RSpec.describe EventRepository do
  let(:subject) { described_class.new(source: JsonReader.new('data/events.json', 'events')) }

  it 'returns events objects' do
    events = subject.all

    expect(events.first.type).to eq("BookingConfirmed")
    expect(events.last.type).to eq("BookingCheckedIn")
  end
end
