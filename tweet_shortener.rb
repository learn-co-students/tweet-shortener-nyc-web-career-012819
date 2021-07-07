# Write your code here.

def dictionary(lookup)
  hash = {
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
  
  hash.each do |key, value|
    if key == lookup || key.capitalize == lookup || key.upcase == lookup
      return value
    end
  end
  
  return lookup
end

def word_substituter(tweet)
  words_array = tweet.split(" ")
  
  words_array.collect! do |word|
    dictionary(word)
  end
  
  words_array.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  for tweet in tweets_array do
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet.slice(0, 137) << "..."
  else
    tweet
  end
end