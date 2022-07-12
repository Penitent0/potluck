require './lib/dish'
require './lib/potluck'

RSpec.describe Potluck do
  before do 
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  end
  it 'exists' do
    expect(@potluck).to be_a(Potluck)
  end
  it 'readable attributes' do
    expect(@potluck.date).to eq("7-13-18")
    expect(@potluck.dishes).to eq([])
  end
  it 'adds dishes' do 
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    expect(@potluck.dishes).to eq([@couscous_salad, @cocktail_meatballs])
    expect(@potluck.dishes.length).to eq(2)
  end
end