require 'account'

RSpec.describe Account do
  describe 'initialize' do
    it 'initializes with a different balance' do
      account = Account.new(129812.45)
      expect(account.balance.round(2)).to eq 129812.45
    end
  end
  describe '#deposit' do
    it 'responds' do
      expect(subject).to respond_to(:deposit).with(1).argument
    end
    it 'deposits money in the account' do
      subject.deposit(2)
      expect(subject.balance.round(2)).to eq 2
    end
  end
  describe '#withdraw' do
    it 'responds' do
      expect(subject).to respond_to(:withdraw).with(1).argument
    end
    it 'withdraws money from the account' do
      account = Account.new(1375.11)
      account.withdraw(500)
      expect(account.balance.round(2)).to eq 875.11
    end
  end
  describe '#view_balance' do
    it 'responds' do
      expect(subject).to respond_to(:view_balance)
    end
    it 'returns the balance' do
      expect(subject.view_balance).to eq 0
    end
  end
end
