# Write your code here.
def dictionary
  substituter = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    "and" => '&'
  }
end

def word_substituter(tweets)
  splitTweets = tweets.split.map do |matchingWord|
    if dictionary.keys.include?(matchingWord.downcase)
      matchingWord = dictionary[matchingWord.downcase]
    else
      matchingWord
    end
  end
  splitTweets.join(' ')
end

def bulk_tweet_shortener(array)
  array.each {|i| puts word_substituter(i)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
    if word_substituter(tweet).length > 140
      word_substituter(tweet)[0..139]
    end
  end
end