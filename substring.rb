def substrings(input_string)
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  final = Hash.new(0)
  dictionary.each do |dictionary_item|
    p dictionary_item
    if input_string.include? dictionary_item
      p "yep"
      final[dictionary_item] += 1
    end
  end

  p final

end

substrings("below the thing I go down to my favourite place yes sir who are you in part to be my partner and sit beside me sit sit sit sit sti sit sit")

# use include?
# creat new hash with default value 0
# for each item in the dictionary, check if it is included in the input string
# as you cycle through: add each item that appears into the hash, with default value 0, and adding one (hash[item] +=1)
