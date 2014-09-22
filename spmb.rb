#!/usr/bin/env ruby

require 'pry'

a = ARGV[0]
b = ARGV[1]

def read_tram(number)
  file_path = File.expand_path("../data/#{ number }.html", __FILE__)
  file = File.read(file_path)
  raw_stops = file.lines.find_all { |line| line =~ /td.*class="zast"/ }
  raw_stops.map do |r|
    r[/<span class="zast".*/].gsub(/<.*?>/, '')
  end
end

stops_a = read_tram(a)
stops_b = read_tram(b)

unless (stops_a & stops_b).empty?
  puts "ANO"
else
  puts "NE"
end

