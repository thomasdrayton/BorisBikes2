require 'rspec'
require './lib/DockingStation.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

 it 'releases working bikes' do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.release_bike).to be_working
 end

 it {is_expected.to respond_to(:dock).with(1).argument}

it 'returns docked bikes' do
 bike = Bike.new
 subject.dock(bike)
 expect(subject.bike).to eq bike
  end

  describe '#release_bike'do
    it 'raises an error if there are no bikes' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'reject bike if full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)} #Namespace operator ::
      expect { subject.dock(Bike.new) }.to raise_error 'Docking Station full'
    end
  end

  describe '#release_bike' do
    it 'pops a bike' do
      expect {subject.to respond_to(:release_bike)}
    end
  end

 end
