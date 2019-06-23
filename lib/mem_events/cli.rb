class MemEvents::CLI

  def call
    puts "Events in Memphis"
    list_events
    find_events
    goodbye
  end

  def make_events
    BASE_PATH = "https://ilovememphisblog.com/"



  def list_events
    MemEvents::Events.list
    @events = MemEvents::Events.all
  end

  def find_events
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
        more_events
      when "exit"
        break
      else
        puts "Not sure what you're asking for...try again!"
      end
    end
  end

  def more_events
    puts <<-DOC
    1. Next event 1
    2. Next event 2
    3. Next event 3
    DOC
    find_events
  end

  def goodbye
    puts "Have a great time at these Memphis events! See you next time."
  end

end
