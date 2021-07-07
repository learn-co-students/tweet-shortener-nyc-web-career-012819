
def dictionary
  hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(string)
  array = string.split(" ")
  array.each_with_index do |word, index|
    dictionary.keys.each do |i|
      if i == word
        array[index] = dictionary[i]
    end
  end
end
array.join(" ")
end


def bulk_tweet_shortener(array)
  array.each_with_index do |tweet, index|
    new_tweet = tweet.split
    new_tweet.each_with_index do |word, index|
      dictionary.keys.each do |i|
        if i == word.downcase
          new_tweet[index] = dictionary[i]
        end
      end
    end
    tweet = new_tweet.join(" ")
    puts tweet
end
end

def selective_tweet_shortener(string)
  if string.length < 140
    return string
  else 
    return word_substituter(string)
end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    tweet = word_substituter(string)
    tweet[0..136] + "..."
  else
    string
end
end