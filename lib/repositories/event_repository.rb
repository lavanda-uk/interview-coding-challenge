require 'json_reader'

class EventRepository
  Event = Struct.new(:type, :created_at, :data)

  def initialize(source:)
    @source = source
  end

  def all
    source
      .read
      .map{|obj| Event.new(obj["type"], obj["created_at"], obj["data"])}
  end

  private

  attr_reader :source
end
