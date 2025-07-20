def substrings(input_string, dictionary)
  matched_string_hash = {}
  input_string_in_array = input_string_covert_to_array(input_string)
  #Use each word in the dictionary and compare it with the user input string
  dictionary.each do |word|
    counter = 0
    counter = compare_word(input_string_in_array, word)
    if counter > 0
      matched_string_hash[word] = counter
    end
  end
  return matched_string_hash
end

#To convert the string into array using split function along the space character
def input_string_covert_to_array(input_string)
  input_string_in_array = input_string.split(' ')
  return input_string_in_array
end

#Takes the user input string and for each dictionary word checks it match. Only one (dictionary word) is passed to the function
def compare_word(input_string_in_array, dictionary_word)
  counter = 0
  dictionary_word_downcase = dictionary_word.downcase
  input_string_in_array.each do |input_word|
    input_word_downcase = input_word.downcase
    if check_dict_word_in_input_word(input_word_downcase, dictionary_word_downcase)
      counter += word_comparison(input_word_downcase, dictionary_word_downcase)
    end
  end
  return counter
end

#Check the dictionary word is in the user input string or not
def check_dict_word_in_input_word(input_word, dictionary_word)
  return input_word.include?(dictionary_word)
end

#Checks for comparison
def word_comparison(input_word_downcase, dictionary_word_downcase)
  counter = 0
  if input_word_downcase.match?(dictionary_word_downcase)
    counter += 1
    # To weed out duplicate alphabets like i in iit
    input_word_downcase.sub!(dictionary_word_downcase, "")
    # To count the duplicate alphabets and keep removing the counted ones from the word by replacing it with "" using sub! method
    while input_word_downcase.match?(dictionary_word_downcase)
      input_word_downcase.sub!(dictionary_word_downcase, "")
      counter += 1
    end
    return counter
  else
    return 0
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]