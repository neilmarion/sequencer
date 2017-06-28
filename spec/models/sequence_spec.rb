require "rails_helper"

describe Sequence do
  describe "validations" do
    subject { build(:sequence) }
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
