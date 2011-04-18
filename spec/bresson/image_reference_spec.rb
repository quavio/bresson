require 'spec_helper'
describe Bresson::ImageReference do

  context "Flickr images" do
    subject{Bresson::ImageReference.new :source => "Flickr"}
    its(:item){should be_instance_of Bresson::Flickr}

    it "should map methods to Flickr instance" do
      Bresson::Flickr.stub(:smeagol).and_return("I works!")
      subject.smeagol.should be_eql("I works!")
    end
  end

  context "Picasa images" do
    subject{Bresson::ImageReference.new :source => "Picasa"}
    its(:item){should be_instance_of Bresson::Picasa}
  end
  
  context "URL images" do
    subject{Bresson::ImageReference.new :source => "URLImage"}
    its(:item){should be_instance_of Bresson::URLImage}
  end

end
