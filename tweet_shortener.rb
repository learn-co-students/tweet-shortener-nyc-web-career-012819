def dictionary
  dictionary = {
    "hello" => 'hi',
    "to, two, too" => '2',
    "for, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  keys_array = dictionary.keys
  tweet_array = tweet.split
  tweet_array.each do |x| 
    keys_array.each do |y| 
      if y.include?(x.downcase) == true && x.length > 1
        new = dictionary[y]
        x.sub! x, new
      end
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |x|
    puts word_substituter(x)
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
  if tweet.length > 140
    new = word_substituter(tweet)
    if new.length > 140
      thenew = new[0..139]
    end
   else tweet 
  end
  
end