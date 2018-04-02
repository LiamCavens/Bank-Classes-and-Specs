class BankAccount

    #attr_reader - Getters
    #attr_writer - Setters
    #attr_accessor - Getters + Setters

    attr_accessor :holder_name, :balance, :type
    
    def initialize(holder_name, balance, type)
        @holder_name = holder_name
        @balance = balance
        @type = type
    end

    # def holder_name()
    #     return @holder_name
    # end

    # def balance()
    #     return @balance
    # end

    # def type()
    #     return @type
    # end
    
    # def set_holder_name(name)
    #     @holder_name = name    
    # end

    # def set_balance(num)
    #     @balance = num
    # end

    # def set_account_type(typechange)
    #     @type = typechange
    # end

    def deposit(amount)
        @balance += amount
    end

    def withdraw(amount)
        @balance -= amount
    end

    def pay_monthly_fee()
        if (@type == "personal")
        @balance -= 10
        else 
            @balance -= 50
        end
    end
end