require 'order'

RSpec.describe Order do

    it 'constructs' do
        order = Order.new
    end

    it 'adds to the order and views the order list' do

        dish1 = double :dish, name: 'pasta', price: 7.99
        dish2 = double :dish, name: 'eggs', price: 2.00

        order = Order.new
        order.add_dish(dish1)
        order.add_dish(dish2)
        result = order.view_order
        expect(result).to eq [dish1, dish2]
    end

    it 'removes a dish from the order' do

        dish1 = double :dish
        dish2 = double :dish

        order = Order.new
        order.add_dish(dish1)
        order.add_dish(dish2)
        order.remove_dish(dish1)
        result = order.view_order
        expect(result).to eq [dish2]
    end

    it 'places order and returns receipt' do
        dish1 = double :dish, name: 'Pasta', price: 8.00
        dish2 = double :dish, name: 'Cake', price: 3.00

        order = Order.new
        order.add_dish(dish1)
        order.add_dish(dish2)

        result = order.place_order

        expect(result).to eq "Pasta : 8.0\nCake : 3.0\nTotal : 11.0"
    end

    it 'sends a message when order is placed' do

        requester_dbl = double :requester

        allow(requester_dbl)
        .to receive(:messages)
        .and_return(requester_dbl)

        expect(requester_dbl)
        .to receive(:create)
        .and_return(true)

        dish1 = double :dish, name: 'Pasta', price: 8.00
        dish2 = double :dish, name: 'Cake', price: 3.00

        order = Order.new
        order.add_dish(dish1)
        order.add_dish(dish2)

        result = order.place_order(requester_dbl)

        expect(result).to eq "Pasta : 8.0\nCake : 3.0\nTotal : 11.0\nText Sent: true"
    end
end
