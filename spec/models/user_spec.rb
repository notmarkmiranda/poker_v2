require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_uniqueness_of(:first_name).scoped_to(:last_name) }
    it { should validate_presence_of :email_address }
    it { should validate_uniqueness_of :email_address }
  end
end
