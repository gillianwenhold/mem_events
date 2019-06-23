class MemEvents::CLI

  # Welcome to the events manager, where you can see all Choose901 Events
  # Asks when they want to
  #

  def call
    puts "Events in Memphis"
    find_events
  end

  def find_events
    puts <<-DOC
    1. The Awakening 'Paint with a Twist - Sun June 23rd 3:00pm - 5:00pm
    2. 2019 Craft Food & Wine Festival - Sun June 23rd 4:00pm - 9:00 pm
    3. Train/Goo Goo Dolls - Sun June 23rd 7:00pm - 10:00pm
    DOC
  end

end
