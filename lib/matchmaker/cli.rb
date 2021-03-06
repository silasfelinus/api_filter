# frozen_string_literal: true

require_relative "./matchmaker"

module Matchmaker
  class CLI
    # CLI interface for the Source/Filter transaction
    attr_accessor :matchmaker

    def call
      # Initializes the matchmaker,
      # helps the user through the initial api match,
      # and calls the menu for api management
      @matchmaker = Matchmaker.new
      system("clear")
      puts "Welcome to Matchmaker!"
      cli_options_menu
    end

    def display_text
      #Displays matchmaker's current text
      puts "**************************************\n"
      puts "CURRENT TEXT:\n\n"
      puts "#{@matchmaker.current_text}\n\n"
      puts "**************************************\n\n"
    end


    def select_source
      # Aallows user to select the active API
      @matchmaker.source = @matchmaker.sources[
        get_integer(1, @matchmaker.sources.length) - 1]
      system("clear")
      puts "Your current source is #{@matchmaker.source[0]}"
    end


    def select_filter
      # Allows user to select the active API
      @matchmaker.filter = @matchmaker.filters[
        get_integer(1, @matchmaker.filters.length) - 1]
      puts "Your current filter is #{@matchmaker.filter[0]}"
    end

    def display_apis(apis)
      # Displays the currently available APIS
      puts "AVAILABLE APIS:\n"
      apis.each_with_index do |api, index|
        puts "#{index + 1} - #{api[0]} \n"
      end
    end

=begin
    def select_active_api(apis, matchmaker_object)
      matchmaker_object = apis[
        get_integer(1, apis.length) - 1]
      system("clear")
      puts "Your current selection is #{@matchmaker.source[0]}"
    end
=end

    def get_new_text
      # Returns fresh text from matchamker's currently selected Source API
      # Grabs and displays fresh source text from Matchmaker
      puts "[Source] = '#{@matchmaker.source[0]}'\n\n"
      new_text = @matchmaker.fetch_me_a_text
    end


    def send_current_text
      # sends current text to Matchmaker's filter 
      # API and displays the response
      new_text = @matchmaker.make_me_a_match
    end


    def cli_options_menu
      # Allows the user to select source and filter 
      # apis and manipulate the text
      valid_answers = %w[1 2 3 4 5]
      we_are_done = false
      while we_are_done == false
        display_text
        puts "1. Change Source: #{@matchmaker.source[0]}"
        puts "2. Change Filter: #{@matchmaker.filter[0]}"
        puts "3. Get new text"
        puts "4. Filter current text"
        puts "5. Quit\n"
        puts "\n"

        selection = get_integer(1, valid_answers.length)
        system("clear")
        case selection
        when 1
          display_apis(@matchmaker.sources)
          select_source
          get_new_text
        when 2
          display_apis(@matchmaker.filters)
          select_filter
          send_current_text
        when 3
          get_new_text
        when 4
          send_current_text
        when 5
          we_are_done = true
        end
      end
    end

    private

    def get_integer(min, max)
      # asks user for input until receiving a valid integer
      user_input = nil
      until user_input.to_i.to_s == user_input && user_input.to_i <= max &&
            user_input.to_i >= min
        puts "Please input an integer between #{min} and #{max}."
        user_input = gets.chomp
      end
      user_input.to_i
    end

    def pause_for_effect
      # pause cli action until user presses any key
      puts "Press enter to continue"
      gets.chomp
      system("clear")
    end

  end
end
