require 'bank_account'

describe BankAccount do
  subject(:account) {described_class.new}

  describe 'initialize' do
    it 'New bank account has a starting balance of 0' do
      expect(account.balance).to eq(0)
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
