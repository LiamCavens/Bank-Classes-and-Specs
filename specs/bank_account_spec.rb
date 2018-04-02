require('minitest/autorun')
require_relative('../bank_account.rb')

class TestBankAccount < MiniTest::Test

    def setup()
        @bank_account = BankAccount.new("John", 500, "business")
    end

 def test_account_name
    assert_equal("John", @bank_account.holder_name)
 end

 def test_account_balance
    assert_equal(500, @bank_account.balance)
 end

 def test_account_type
    assert_equal("business", @bank_account.type)
 end

 def test_set_account_name
    @bank_account.holder_name = "Alan"
    assert_equal("Alan", @bank_account.holder_name)
 end

 def test_set_account_balance
    @bank_account.balance = 1000
     assert_equal(1000, @bank_account.balance)
 end

 def test_set_account_type
    @bank_account.type = "personal"
    assert_equal("personal", @bank_account.type)   
 end

 def test_pay_into_account__increasing_balance
     @bank_account.deposit(1000)
     assert_equal(1500, @bank_account.balance)
 end

 def test_withdraw_from_account__decreasing_balance
     @bank_account.withdraw(200)
     assert_equal(300, @bank_account.balance)
 end

 def test_pay_monthly_fee_business
    @bank_account.pay_monthly_fee()
    assert_equal(450, @bank_account.balance)
 end

 def test_monthly_fee_personal
    personal_account = BankAccount.new("Upul", 10, "personal")
    personal_account.pay_monthly_fee()
    assert_equal(0, personal_account.balance)
 end
end