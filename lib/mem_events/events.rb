class MemEvents::Events


  def self.list

    puts <<-DOC
    {name: "The Awakening 'Paint with a Twist'", time: "Sun June 23rd 3:00pm - 5:00pm"},
    {name: "2019 Craft Food & Wine Festival", time: "Sun June 23rd 4:00pm - 9:00pm"},
    {name: "Train/Goo Goo Dolls", time: "Sun June 23rd 7:00pm - 10:00pm"},
    {name: "Garden Camp", time: "Mon Jun 24th 9:00am - Fri 28th 12:00pm"},
    {name: "D is for Dinosaur Dig", time: "Mon Jun 24th 9:00am - Fri 28th 12:00pm"},
    {name: "If I had a Camera | Art Shay: Activism, Civil Rights & Justice", time: "Mon June 24th 9:00am - Sat Oct 5th 5:00pm"},
    {name: "Free Socializing Event with DJ AO", time: "tbd"},
    {name: "Next Event 1", time: "tbd"},
    {name: "Next Event 2", time: "tbd"}
    DOC

  end

end
