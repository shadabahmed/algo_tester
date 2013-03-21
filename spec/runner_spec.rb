require 'spec_helper'

input_output = {}
File.open(File.expand_path('../../data', __FILE__)).each do |input|
  input_output[input.strip] = `/usr/bin/env ruby #{File.expand_path('../../trivial.rb', __FILE__)} #{input.strip}`.strip
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
