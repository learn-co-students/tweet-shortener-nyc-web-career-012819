def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
end

def word_substituter(string)
  ref = dictionary
  con_array = string.split(" ")
  
  con_array.collect do |words|
    ref.collect do |key, value|
      if words.downcase == key
        words.replace(value)
      end
    end
  end
  con_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.collect do |tweet_element|
    puts word_substituter(tweet_element)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  if shortened.length > 140
    shortened[0..136].concat("...")
  else 
    shortened
  end
end