require 'menu'

RSpec.describe Menu do
    it 'adds dish and returns menu' do
        dish1 = double :dish, name: 'Pasta', price: 8
        dish2 = double :dish, name: 'Egg', price: 2
        menu = Menu.new
        menu.add(dish1)
        menu.add(dish2)
        result = menu.view
        expect(result).to eq ['Pasta: 8', 'Egg: 2']
    end
end

