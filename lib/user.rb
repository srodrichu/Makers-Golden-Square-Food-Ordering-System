# require 'twilio-ruby'
# require_relative 'menu'
# require_relative 'dish'
# require_relative 'order'

# class User

#     def initialize(io, menu, order)
#         @io = io
#         @menu = menu
#         @order = order
#         @requester = Twilio::REST::Client.new('AC61f01004ed68dd3e103a0a09a705801d', '1505319531e941afb3f1bceb54b509c1')
#     end

#     def run

#         while true do
#             @io.puts "Here is the menu, enter what dish you wish to add to your order "
#             @io.puts @menu.view
#             dish = @io.gets.chomp
#             order.add_dish(dish)
#             @io.puts "Would you like to add another dish (y/n)?"
#             again = @io.gets.chomp
#             if again == 'n'
#                 break
#             elsif again == 'y'
#                 next
#             end
#         end

#         @io.puts "Would you like to place your order?"
#         ans = @io.gets.chomp
#         @order.place_order(@requester) if ans == 'y'
#     end
# end

# dish1 = Dish.new('yeah', 12.0)
# dish2 = Dish.new('no', 6.12)
# dish3 = Dish.new('xxx', 69.99)

# menu = Menu.new

# menu.add(dish1)
# menu.add(dish2)
# menu.add(dish3)

# order = Order.new

# user = User.new(Kernel, menu, order)

# user.run

