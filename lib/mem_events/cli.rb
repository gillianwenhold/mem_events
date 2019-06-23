class MemEvents::CLI

  def call
    puts "Events in Memphis"
    make_events_list
    list_events
    find_events
    goodbye
  end

  def make_events_list
    # all_events = Scraper.get_all_events to get an array of events including the name, date, and detail urls
    # Pass array into Events.create_from_selection(all_events) to parse into list of events
  end

  def make_event_details
    # event_details = Pass detail url from each event into Scraper.get_event_details(events.detail_url) to get an array of details for each event
    # Pass array into Events.add_details(event_details) to add details to each event
  end

  end
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
