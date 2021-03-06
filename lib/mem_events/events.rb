require "pry"
require "nokogiri"
require "open-uri"

class MemEvents::Events

  attr_accessor :all, :name, :detail_url, :time, :location, :description, :cost, :website, :event_category

  @@all = []

  def initialize(hash)
    hash.each do |key, val|
      self.send("#{key}=", val)
    end
    @@all << self
  end

  def self.create_from_selection(all_events)
    all_events.each do |event|
      self.new(event)
    end
  end

  def self.add_details(event_details)
    event_details.each do |key, val|
      self.send("#{key}=", val)
    end
  end

  def self.all
    @@all
  end

end

=begin

  def self.list

    array = [
      ["The Awakening 'Paint with a Twist'", "Sun June 23rd 3:00pm - 5:00pm"],
      ["2019 Craft Food & Wine Festival", "Sun June 23rd 4:00pm - 9:00pm"],
      ["Train/Goo Goo Dolls", "Sun June 23rd 7:00pm - 10:00pm"],
      ["Garden Camp", "Mon Jun 24th 9:00am - Fri 28th 12:00pm"],
      ["D is for Dinosaur Dig", "Mon Jun 24th 9:00am - Fri 28th 12:00pm"],
      ["If I had a Camera | Art Shay: Activism, Civil Rights & Justice", "Mon June 24th 9:00am - Sat Oct 5th 5:00pm"],
      ["Free Socializing Event with DJ AO", "tbd"],
      ["Next Event 1", "tbd"],
      ["Next Event 2", "tbd"],
      ["Next Event 3", "tbd"],
      ["Next Event 4", "tbd"]
    ]

    array.each do |item|
      title = item[0]
      date = item[1]
      self.new(title, date)
    end

  end

  def self.all
    @@all.each_with_index do |item, index|
      puts "#{index+1}. #{item.name} - #{item.time}"
    end
  end

end

=end
