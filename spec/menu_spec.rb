require 'menu'

RSpec.describe Menu do
    it 'adds dish and returns menu' do
        dish = double :dish
        menu = Menu.new
        menu.add(dish)
        result = menu.view
        expect(result).to eq [dish]
    end
end

