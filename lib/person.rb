class Person

    attr_accessor :name, :cash, :account

    def initialize(name = {})
        set_name(name[:name])
        @cash = 0
        @account = nil
    end

    def create_account
        @account = Account.new({owner: self})
    end

    def set_name(name)
        name.nil? ? missing_name : @name = name
    end

    def missing_name
        raise ArgumentError, "A name is missing"
    end


end