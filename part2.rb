#!/usr/bin/ruby

require 'cgi'
cgi = CGI.new

puts cgi.header

first = cgi['first'].capitalize
last = cgi['last'].capitalize
address = cgi['address'].split.map(&:capitalize)*' '

puts "<html>"
puts "<body style=\"background-color: purple; text-align: center; margin-top: 35px;\">"
puts "<h1>Varun CPS530 Lab 6 part 2 ruby</h1>"
puts "<h1>First Name: " + first + "</h1>"
puts "<br><h1>Last Name: " + last + "</h1>"
puts "<br><h1>Address: " + address + "</h1><br>"

puts '<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>'
puts '<script type="text/javascript">'
puts 'var phoneNum="' + cgi['phone'] + '";'
puts <<ANIMATE
  var splitPhone = phoneNum.split("-");
  document.write("<span class='area' style='color:red; font-size: 3em;'>" + splitPhone[0] + "</span>");
  $('.area').hide().fadeIn(4000);
  document.write("<span class='prefix' style='color:green; font-size: 3em;'>-" + splitPhone[1] + "-</span>");
  $('.prefix').hide().fadeIn(8000);
  document.write("<span class='line' style='color:blue; font-size: 3em;'>" + splitPhone[2] + "</span>");
  $('.line').hide().fadeIn(12000);
ANIMATE
puts '</script>'
puts "</body></html>"
