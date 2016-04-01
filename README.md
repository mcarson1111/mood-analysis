# Mood Analysis: Hash Practice
Let's practice interacting with Hashes (key-value pairings) by writing a program that creates hashes, stores data in hashes, retrieves data from hashes, and prints the contents of a hash.

## mood-analysis.rb
Take a look at [mood-analysis.rb](mood-analysis.rb).

### What's Happening?
Explain what is happening on each of the following lines in the code.

| Line # | What's happening?
|:------:|-------------------
| 1      | defining a constant as a hash
| 2      | defining the the first key and it's value/positive words
| 3      | defining the second key and its value/ negative words
| 6      | creating a method that takes one parameter
| 7-8    | defining two local variables, sets their value to 0
| 9      | converting the parameter to downcase, in case it was given with a capital letter
| 10     | splitting the parameter at spaces and iterating over each word
| 11     | checking to see if any of the values of the key happy in the constant are included in the parameter
| 12     | adds 1 to the current value of the local variable happy
| 13     | checking to see if any of the values of the key sad in the constant are included in the parameter
| 14     | adds 1 to the current value of the local variable sad
| 17-19  | outputting :-) if the local variable happy has a value greater than the local variable sad, outputting :-( if the local variable sad has a value greater than the local variable happy, or outputting :-| if they are equal.

### Data Types
What's the Data Type of the following?

| Code                       | Data Type
|----------------------------|-----------
| FEELINGS                   | constant
| :sad                       | key/symbol
| happy                      | local variable/fixnum
| words                      | string
| words.split(" ")           | str method call -> array of strings
| FEELINGS[:sad]             | array literal/ array of strings
| FEELINGS[:happy].include?  | boolean
| analyze_mood(text)         | return type is a string

### Explaining the Code
| Question               | Answer
|------------------------|-------
| Why do we need line 9? | in case the parameter included an uppercase letter, it would never match the key values in the constant variable hash
| What is the relationship between `words` and `word` (line 10)? | word is one element in the words array
| Why doesn't line 19 have an associated if/condition? | Because it is implied that the two would be equal...you've declared that if one is greater than the other, something else will happen, so if one is not greater than the other, it would mean they are equal.
| What is the relationship between `text[0]`, `text[1]`, and `words`? | in the puts statement, you are calling the method on the first [0] and second [1] elements within the array text, each of these become the parameters (words) given to the method

### Assignment: Requirements
1. Replace lines 31 and 32 and write a loop to print out each day and the emoticon that is associated by analyzing the mood of that day.

Your result will look like:
```
03/01  :-(
03/13  :-|
...
```

**think**: Why does 03/13 come out as _neutral_ when it should be _happy_? How could we fix this?
   -it's neutral because every value word has a punctuation attached to it, so it's not registering as an actual value comparable to the ones in the hash.

2. To make the results a little more accurate, let's write and utilize a method called `strip_punctuation` to strip out the punctuation that affects the results. Namely, remove  exclamation marks (!), periods (.), commas (,), and hashtags (#).

Your method should take a string as an argument and return the string without the above mentioned punctuation.

After writing this method, our new result should be:
```
03/01  :-(
03/13  :-)
...
```

**think**: Where should we call `strip_punctuation`? Does it matter? Why? probably after we downcase the words, but before we split the words into single elements to analyze.

3. Write a method called `happy_days` to determine how many logged entries it takes until there have been three :-) happy days.

Your output could be something like:
```
It takes 5 entries for 3 happy days to occur
```

**think**: What are you going to do if there aren't at least 3 happy days? Where do you need to handle that case?

4. Write a method called `overall_mood` to determine the most common mood across all logged entries.

Your output could be something like:
```
The most common mood is :-)
```

**think**: Should you use an array or a hash to solve this problem? Why?

**think**: What if we eventually want to add feelings to our analysis? Can we write this code in a way that will prevent us from having to re-write it later?
