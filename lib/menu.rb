class Menu

    def initialize
        @menu = []
    end

    def add(dish)
        @menu << dish
    end

    def view
        @menu.map{|v| "#{v.name}: #{v.price}"}
    end

end
