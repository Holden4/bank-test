require 'bank_account'

describe BankAccount do
  subject(:account) {described_class.new}

  describe 'initialize' do
    it 'New bank account has a starting balance of 0' do
      expect(account.balance).to eq(0)

    end
  end
end
