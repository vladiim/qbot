require_relative '../spec_helper'

describe Survey do

  describe 'db' do
  	it { should have_db_column(:name) }
  	it { should have_db_column(:order_number) }
  	it { should have_db_column(:user_id) }
  end

  describe 'validations' do
  	it { should validate_numericality_of(:user_id) }
  end

  describe 'associations' do
  	it { should belong_to(:user) }
  end
end