require 'rails_helper'

RSpec.describe Function, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:templates) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
