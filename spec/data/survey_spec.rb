require_relative '../spec_helper'

describe Survey do
  describe 'db' do
  	it { should have_db_column(:name) }
  	it { should have_db_column(:order_number) }
  	it { should have_db_column(:user_id) }
  end
end