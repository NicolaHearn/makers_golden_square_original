require 'present'

describe Present do
    it "fails when a present is added" do 
      my_present = Present.new
      my_present.wrap("toy")
      expect { my_present.wrap("toy") }.to raise_error "A contents has already been wrapped."
    end
    it "fails when there is nothing to unwrap" do
        my_present = Present.new
        expect { my_present.unwrap }.to raise_error "No contents have been wrapped."
    end
  end