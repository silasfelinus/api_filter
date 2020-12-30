class API_Filter::CLI
  
  def intro 
    puts "Hello! I'm API Filter!"
    puts "I love taking in text from a variety of sources"
    puts "and run it through one or more filters."
    puts "(I'm still learning, so please be kind)."
    puts "Feedback can be sent to my friend Silas Knight"
    puts "silasfelinus@gmail.com"

    puts "1. Choose API Source (CURRENTLY Google)"
    puts "2. Choose Filter (CURRENTLY Pirate)"
    puts "3. Change Loop Amount (CURRENTLY 1)"
    puts "4. Run Filter"
    puts "I want to help,"
  end

  def call
    intro
    valid_answers = ["1", "2", "3", "4"]
    user_input = nil
    until valid_answers.include?(answer)
      puts "please input a number between 1 and #{valid_answers.length()}."
      user_input = gets.chomp
    end

    case user_input
        
    when "1"
      #Choose API Sources 

    when "2"
      #Choose Filter

    when "3"
      #Change Loop Toggle

    when "4"
      #Run Filter

    end
  end


end