require 'rails_helper'

RSpec.describe CannedResponse, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:template) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
