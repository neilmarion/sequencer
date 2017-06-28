require "rails_helper"

describe Sequence do
  describe "validations" do
    it { should validate_presence_of(:name) }
  end
end
