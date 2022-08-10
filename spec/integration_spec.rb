require 'menu'
require 'dish'

RSpec.describe 'integration tests' do
    it 'adds a dish object to the menu and returns the menu' do
        dish = Dish.new('pasta', 7.99)
        menu = Menu.new
        menu.add(dish)
        result = menu.view
        expect(result).to eq [dish]
    end
end
