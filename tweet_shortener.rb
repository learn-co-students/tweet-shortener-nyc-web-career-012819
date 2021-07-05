require 'pry'

def dictionary
  shortened_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  shortened_hash
end

def word_substituter(tweet)
  tweet_arr = tweet.split(" ").map! {|e| dictionary.keys.include?(e) ? dictionary[e] : e}
  tweet_arr.join(" ")
end

def bulk_tweet_shortener(array)
  shortener = array.map! {|a| puts word_substituter(a)}
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    new_tweet = word_substituter(tweet)
    new_tweet
    if new_tweet.size > 140
      new_tweet[0..139]
    else
      new_tweet
    end
  else
    tweet
  end
end
