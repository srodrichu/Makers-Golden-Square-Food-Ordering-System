class Menu

    def initialize
        @menu = []
    end

    def add(dish)
        @menu << dish
    end

    def view
        @menu
    end

end
