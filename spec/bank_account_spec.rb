require 'bank_account'

describe BankAccount do
  subject(:account) {described_class.new}
  subject(:account1) {described_class.new(starting_balance: 10)}

  describe 'initialize' do
    it 'New bank account has a starting balance of 0' do
      expect(account.balance).to eq(0)
    end
    it 'New account has a staring balance of 20' do
      expect(account1.balance).to eq(10)
    end
  end

  describe '#deposit' do
    it 'Adds deposit amount to current balance' do
      account.deposit(10)
      expect(account.balance).to eq (10)
    end
  end

  describe '#withdrawal' do
    it 'Deducts the amount from the current balance' do
      account.deposit(20)
      account.withdrawal(10)
      expect(account.balance).to eq (10)
    end
  end
end
