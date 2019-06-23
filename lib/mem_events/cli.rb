class MemEvents::CLI

  # Welcome to the events manager, where you can see all Choose901 Events
  # Asks when they want to
  #

  def call
    puts "Events in Memphis"
    find_events
    more_info
    goodbye
  end

  def find_events
    puts <<-DOC
    1. The Awakening 'Paint with a Twist - Sun June 23rd 3:00pm - 5:00pm
    2. 2019 Craft Food & Wine Festival - Sun June 23rd 4:00pm - 9:00 pm
    3. Train/Goo Goo Dolls - Sun June 23rd 7:00pm - 10:00pm
    DOC
  end

  def more_info
    puts "Enter the number of an event you'd like more information about, or enter 'more' to see more events! Or type 'exit' to quit."
    input = ""
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "1"
        puts "More info on first event"
        puts "Enter the number of another event, 'more' to see more, or 'exit' to quit!"
      when "2"
        puts "More info on second event"
        puts "Enter the number of another event, 'more' to see more, or 'exit' to quit!"

      when "3"
        puts "More info on third event"
        puts "Enter the number of another event, 'more' to see more, or 'exit' to quit!"
      when "more"
        puts "More events"
        puts "Enter the number of an event to see details, 'more' to see more, or 'exit' to quit!"
      else
        puts "Not sure what you're asking for...try again!"
      end
    end
  end

  def goodbye
    puts "Have a great time at these Memphis events! See you next time."
  end

end
