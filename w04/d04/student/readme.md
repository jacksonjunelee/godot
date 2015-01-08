# Learning Objectives

Define JSON
Compare JSON to other datatypes in Ruby
Explain what datatype JSON is *represented*
Explain what datatype JSON *resembles*

## Randomuser.me

We're going to use your Chrome Developer Tools Network tab to do some investigating.  Open it with `Option + Command + i` and click on the "Network" tab

We're interested in the "Type" column.

![:image](gravatar_app/public/img/network_tab.png)

Visit https://randomuser.me/

Next visit http://api.randomuser.me

1. What Ruby data type does the response from http://api.randomuser.me *resemble*?
  The response resembles a Ruby hash with key-value pairs.

Now check the Network tab.  You may need to refresh the page to have the network tab record the page visit.

1. What Response Type is recorded when you visit `https://randomuser.me/` ?
  Images, texts, fonts, etc.

1. What type is recorded when you visit `http://api.randomuser.me`?
  A json is recorded.

Check the randomuser.me [documentation](https://randomuser.me/documentation#results).

1.  Construct a URL to get back 25 results.
  http://api.randomuser.me/?results=25

1.  Construct a URL to get back a man.
  http://api.randomuser.me/?gender=male

1.  Construct a URL to get back 25 women.
  http://api.randomuser.me/?results=25&gender=female

## Dealing with JSON

1. Find the Ruby documentation for JavaScript Object Notation

1. What method converts JSON into usable code in Ruby?
  require 'json' --> JSON.parse('{"key": "value"}')

1. What methods convert data to JSON?
  require 'json' --> {"key": "value"}.to_json -OR- my_hash = {"key": "value"} --> JSON.generate(my_hash)

Create a new Ruby file called `randomusers` and do the following

1. Paste in your results from http://api.randomuser.me/. Assign it to a string called `results` and use Ruby's JSON library to parse them.

1. Collect all your results names into an Array called `usernames`

1.  Collect all your results thumbnail images into an Array called `thumbnails`
