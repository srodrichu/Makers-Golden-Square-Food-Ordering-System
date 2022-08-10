class Order
    def initialize
        @order = []
    end

    def add_dish(dish)
        @order << dish
    end

    def view_order
        @order
    end

    def remove_dish(dish)
        @order.select!{|d| d != dish}
    end

    def place_order

        str = ''
        total = 0

        @order.each{|dish| str += "#{dish.name} : #{dish.price}\n"}
        @order.each{|dish| total += dish.price}

        str += "Total : #{total}"

        str
    end
end