class Bank
    attr_reader :name
    @@all = []
    def initialize(name)
         @name = name
         self.class.all << self
    end
 
    def self.all
         @@all
    end

    def accounts
        Account.all.select {|account| account.bank == self }
    end

    def customers
        self.accounts.map { |account| account.customer }
    end

    def open_account(customer)
        Account.new(bank: self, customer: customer, balance: 100)
    end

end
