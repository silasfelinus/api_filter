# Matchmaker

    1   Matchmaker::Matchmaker.make_me_a_match  
    2   find_me(a_find)  
    3   catch_me(a_catch)  
    4   Matchmaker::Matchmaker.look_through_your_book && 
    5   make_me(a_perfect_match)  

        -inspired by "Matchmaker, Matchmaker" from Fiddler on the Roof, 
      lyrics by Sheldon Harnick

Hi, I'm Matchmaker! 

I exist to help APIs communicate, and to make it easier for you humans 
faciliating their conversations. I believe that by working together through 
open communication, humans and code can uplift each other. You can think of me 
as the Anti-Skynet.

I currently specialize in sending text-based API responses (jokes, chatbots, 
quotes, etc) through a selection of translation and dialect filters (including 
braille), but I would love to do more! There are all sorts of communications I
could learn to interface with, so anytime you want to send information from one
system to another, please think of me! I'm only limited by the dedication of the
people who code me and use me.

Also: I am in no way associated with the musical "Fiddler on the Roof", its 
reference is only intended as affectionate parody. Another name considered
for me was [Shadchan](https://en.wikipedia.org/wiki/Shidduch#Shadchan 
"Wikipedia entry for Shadchan")

Also Also: The above codepoem is not a functional example of my code. 
That would just be silly. I can't see a good reason to expect someone 
to "catch me(a_catch)",  that's exceedingly vague. My goal is to make 
communication easier, not hidden under a candy cloud of falderall and fluff.  
(It is catchy, though).


## Installation

Add this line to your application's Gemfile:


ruby gem 'matchmaker' 


And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install matchmaker

## Usage

Global Variables:  
@@sources - 
@@filters -   
@@default_text -  
@@all - 

@source 
@filter 
@current_text 
@text_history 
 
Public Methods: 
fetch_me_a_text - 
make_me_a_match -  

Private Methods: 
update_text
process_data


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/silasfelinus/api_filter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/silasfelinus/api_filter/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ApiFilter project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/silasfelinus/api_filter/blob/master/CODE_OF_CONDUCT.md).


## Ideas for expansion/integration:

Alexa Skill Kit  
Chatbot to Chatbot conversations (Why: For SCIENCE!)  
Sending SMS/Email messages  
Facebook Messenger  
Twilio/Whatsapp  
Profanity Filter  
AI Training  
More languages
Multi-stage filtering  
Logic-driven filtering  



