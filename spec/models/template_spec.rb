require 'rails_helper'

RSpec.describe Template, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:function) }

    it { should have_one(:canned_response) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
