class Customer
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
        Account.all.select { |account| account.customer == self }
   end

   def banks
        self.accounts.map { |account| account.bank }.uniq
   end

   def balance
        # Solution 1
        # total_balance = 0
        # accounts.each { |account| total_balance += account.balance }
        # total_balance

        # Solution 2
        # accounts.reduce(0) {|total_balance, account| total_balance + account.balance }
        
        # Solution 3
        accounts.collect { |account| account.balance }.sum
   end

end
