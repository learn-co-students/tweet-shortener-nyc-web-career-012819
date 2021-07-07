require 'pry'
# Write your code here.
def dictionary
  subWords = {"hello" => "hi",
"to" => "2",
"too" => "2",
"for" => "4",
"four" => "4",
"be" => "b",
'you' => "u",
"at" => "@",
"and" => "&"
}
end

 def word_substituter(tweet)
   dictionary
  tweetArr = tweet.split(" ")
  
  tweetArr.collect do |word|
    dictionary.collect do |k, v|
      if word.downcase == k
         word.replace(v)
      end
     end
    end
      tweetArr.join(" ")
  end

 
  ##traverse through this Array
  ##if word is equal to key, then replace it with the object key


def bulk_tweet_shortener(tweetArr)
   tweetArr.collect do |tweet|
    puts word_substituter(tweet)
   end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
     return word_substituter(tweet)
  else 
     return tweet  
  end
end

def shortened_tweet_truncator(tweet)
  tweet[0...140]
  
end