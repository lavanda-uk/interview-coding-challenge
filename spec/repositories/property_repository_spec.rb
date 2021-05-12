require 'repositories/property_repository'

RSpec.describe PropertyRepository do
  let(:subject) { described_class.new(source: JsonReader.new('data/properties.json', 'properties')) }

  it 'returns property objects' do
    properties = subject.all

    expect(properties.find{|property| property.id == 1}.title)
      .to eq('Modern 2 bedrooms flat in Covent Garden')

    expect(properties.find{|property| property.id == 2}.title)
      .to eq('Antique 3 bedrooms flat in South Kensington')
  end
end
