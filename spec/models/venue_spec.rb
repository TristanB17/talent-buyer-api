require 'rails_helper'

RSpec.describe Venue, type: :model do
  context 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:street_address) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:zip) }
    it { should validate_presence_of(:capacity) }
  end
  context 'Relationships' do
    it { should have_many(:buyer_venues) }
    it { should have_many(:buyers).through(:buyer_venues) }
  end
end
