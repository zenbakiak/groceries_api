require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = FactoryGirl.build(:user)
  end

  subject { @user }

  it { should be_valid }

end
