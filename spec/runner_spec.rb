require 'spec_helper'

require File.expand_path('../../trivial', __FILE__)

input_output = {}
File.open(File.expand_path('../../data', __FILE__)).each do |input|
  input_output[input.strip] = Trivial.run(input)
end

describe "Algorithm - " do
  describe "Running outputs against input : " do
    input_output.each do |input, output|
      it "matches for #{input}" do
        `#{File.expand_path('../../algo', __FILE__)} #{input}`.strip.should == output
      end
    end 
  end  
end
