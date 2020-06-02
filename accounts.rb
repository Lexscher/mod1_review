class Account
    attr_reader :bank, :customer
    attr_accessor :balance

    @@all = []

    def initialize(bank:, customer:, balance:)
        @bank = bank
        @customer = customer
        @balance = balance
        @@all << self
    end

    def self.all
        @@all
    end
end
