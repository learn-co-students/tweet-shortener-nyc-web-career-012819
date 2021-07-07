# Write your code here.
  dict = {
    "hello" => "hi",
    "to"=> "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }


def word_substituter (tweet)
  dict = {
    "hello" => "hi",
    "to"=> "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
new_tweet = tweet.split.map { |word|
  dict.fetch(word.downcase, word)
}.join(" ")
end


def bulk_tweet_shortener (array_of_tweets)
  array_of_tweets.each do |x|
    puts word_substituter(x)
end
end

def selective_tweet_shortener (tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
end
end

def shortened_tweet_truncator (tweet)
  if tweet.length <= 140
    tweet
  else
    tweet[0..139]
  end
end
