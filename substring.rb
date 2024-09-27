def substrings(input_string)
  puts "You inputed:"
  puts ""
  puts "'#{input_string}'"
  puts ""
  puts "This is how many times each of these words appears in your input"
  puts ""
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  word_list = input_string.split(" ")
  final = Hash.new(0)
  word_list.each do |word|
    dictionary.each do |dictionary_item|
      if word.downcase.include? dictionary_item.downcase
        final[dictionary_item] += 1
      end
    end
  end

  p final

  puts ""
  puts ""
  puts ""
end

substrings("below the thing I go down to my favourite place yes sir who are you in part to be my partner and sit beside me sit sit sit sit sti sit sit")
substrings("below down go going horn how howdy it i low own part parntner sit")
substrings("Howdy partner, sit down! How's it going?")

# use include?
# creat new hash with default value 0
# for each item in the dictionary, check if it is included in the input string
# as you cycle through: add each item that appears into the hash, with default value 0, and adding one (hash[item] +=1)

# proper solution
# split input into separate words, then do the above comparing to each word in the input