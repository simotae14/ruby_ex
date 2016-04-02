# esempio script di test con RSPEC
require 'rspec'
# importiamo il file con la classe da testare
require_relative '../064_calcolo.rb'


# creo il metodo principale describe
describe Calcolo do
  # anzitutto che faccio
  before { @calc = Calcolo.new('RSpec calcolo') }
  
  it "should add 2 numbers correctly" do
    expect(@calc.somma(2, 2)).to eq 4
  end
  
  it "should subtract 2 numbers correctly" do
    expect(@calc.sottrazione(4, 2)).to eq 2
  end
  
  # uso di altri matcher tipo quelli predicativi
  # be_even be_odd
  it "should sum two odd numbers and become even" do
    expect(@calc.somma(3, 3)).to be_even
    expect(@calc.somma(3, 3)).not_to be_odd
  end
end