require 'rspec'
require '../lib/DockingStation.rb'

describe 'DockingStation' do
  it 'releases bike' do
    expect(releases_bike(bike)).to eq "Bike is released"
  end
end
