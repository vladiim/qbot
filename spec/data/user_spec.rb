require_relative '../spec_helper'

describe User do

  describe 'db_columns' do
    it { should have_db_column(:username) }
    it { should have_db_column(:email) }
    it { should have_db_column(:crypted_password) }
    it { should have_db_column(:password_salt) }
    it { should have_db_column(:perishable_token) }
    it { should have_db_column(:persistence_token) }
  end
end