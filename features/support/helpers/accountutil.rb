module AccountUtils

    def my_account
        @my_account = @my_account || Account.new
    end
end

World(AccountUtils)
