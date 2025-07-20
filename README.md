# Sub Strings

This project implements a method to find substrings from a dictionary of words, as part of [The Odin Project's Ruby curriculum](https://www.theodinproject.com/lessons/ruby-sub-strings).

## Features

- Takes a word or a phrase and a dictionary (array of valid substrings).
- Returns a hash listing every substring found in the original word/phrase and how many times it was found.
- Handles case-insensitivity.

  ```ruby
  dictionary = ["below","down","go","goes","heroku","i","how","what","is","it","i","partner","sit"]
  substrings("below", dictionary)
  # => { "below" => 1, "low" => 1 }

  substrings("Howdy partner, sit down!", dictionary)
  # => { "down" => 1, "go" => 1, "how" => 1, "howdy" => 1, "i" => 3, "it" => 2, "partner" => 1, "sit" => 1 }
  ```
