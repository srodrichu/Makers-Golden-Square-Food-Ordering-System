require 'twilio-ruby'

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

    def place_order(requester = nil)

        str = ''
        total = 0

        @order.each{|dish| str += "#{dish.name} : #{dish.price}\n"}
        @order.each{|dish| total += dish.price}

        result = str += "Total : #{total}"

        requester ? result + "\nText Sent: #{send_confirmation(requester)}" : result
        
    end

    private

    def send_confirmation(requester)
        account_sid = 'AC61f01004ed68dd3e103a0a09a705801d' 
        auth_token = '1505319531e941afb3f1bceb54b509c1' 
        #@client = Twilio::REST::Client.new(account_sid, auth_token) 
        
        message = requester.messages.create( 
            body: 'Thank you! Your order was placed and will be delivered before 18:52',  
            messaging_service_sid: 'MG7adf057bbad494b2f9219e0af4b6d882',      
            to: '+447895843296' 
        )

        return true
    end
end

