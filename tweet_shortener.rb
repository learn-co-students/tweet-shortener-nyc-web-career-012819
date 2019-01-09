# Write your code here.

def dictionary
    dictionary={"hello" => "hi","two" => "2","too" => "2","to" => "2","four" => "4","for" => "4","be" => "b","you" => "u","at" => "@","and" => "&"}
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweets)
  if tweets.size > 140
    word_substituter(tweets)
  else tweets.size < 130
    tweets
    end
  end


  def shortened_tweet_truncator(tweets)
    if tweets.size < 130
      tweets
    else
      selective_tweet_shortener(tweets)
      if tweets.size > 140
        tweets[0..136]+"..."
      else
        tweets
      end
    end
  end
