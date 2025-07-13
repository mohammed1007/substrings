def substrings(word,dictionary)
  result = Hash.new(0)
  lower = word.downcase
  
  dictionary.each do |substring|
    low_substring = substring.downcase
    safe_substring = Regexp.escape(low_substring)
    pattern = /#{safe_substring}/
    matches = lower.scan(pattern)
    count = matches.length

    result[substring.downcase] += count if count > 0
  end

  puts result
end

substrings("Howdy partner, sit down! How's it going?",["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] )


