def substrings(string, dictionary)
  tally = Hash.new
  string_lowered = string.downcase

  dictionary.each do |word|
    times_found = string_lowered.scan(word).length
    unless times_found == 0
      tally[word] = times_found
    end
  end
  p tally
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)