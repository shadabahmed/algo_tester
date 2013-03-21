module Trivial
  def self.run(input)
    max_surpasser = 0 
    str = input

    str.each_char.each_with_index do |chr, i|
      surpasser_count = str[(i+1)..str.length].each_char.select{|c| c.ord > chr.ord}.length
      max_surpasser = surpasser_count if surpasser_count > max_surpasser
    end

    max_surpasser.to_s
  end  
end
