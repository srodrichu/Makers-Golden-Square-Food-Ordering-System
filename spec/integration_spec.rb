require 'menu'
require 'dish'

RSpec.describe 'integration tests' do
    it 'adds a dish object to the menu and returns the menu' do
        dish = Dish.new('pasta', 7.99)
        menu = Menu.new
        menu.add(dish)
        result = menu.view
        expect(result).to eq ['pasta: 7.99']
    end

    it 'adds a dish to the order and returns receipt' do

        dish = Dish.new('yhyh', 12)
        order = Order.new
        order.add_dish(dish)
        result = order.view_order
        expect(result).to eq [dish]
    end

    it 'places an order' do


        requester_dbl = double :requester

        allow(requester_dbl)
        .to receive(:messages)
        .and_return(requester_dbl)

        expect(requester_dbl)
        .to receive(:create)
        .and_return(true)

        dish1 = Dish.new('yum', 12)
        dish2 = Dish.new('yuck', 1)

        order = Order.new
        order.add_dish(dish1)
        order.add_dish(dish2)

        result = order.place_order(requester_dbl)

        expect(result).to eq "yum : 12\nyuck : 1\nTotal : 13\nText Sent: true"
    end
end
