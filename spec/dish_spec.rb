require 'dish'

RSpec.describe Dish do
    it 'constructs' do
        dish = Dish.new('Pasta', 7.99)
    end

    it 'returns the price of the dish' do
        dish = Dish.new('Pasta', 7.99)
        result = dish.price
        expect(result).to eq 7.99
    end

    it 'returns the name of the dish' do
        dish = Dish.new('Pasta', 7.99)
        result = dish.name
        expect(result).to eq 'Pasta'
    end
end
