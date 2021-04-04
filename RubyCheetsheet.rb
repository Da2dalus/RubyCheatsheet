#  ##############################################
#  #                                            #
#  #        Ruby cheatsheet                     #
#  #                                            #
#  #                   by Da2dalus              #
#  #                                            #
#  #                                            #
#  #                                            #
#  ##############################################

# ------------------------------------------------------------

# Print text on screen

puts "Hello world!"

# or

print "Hello world!"

# puts "Hello world! = print "Hello world!/n"

# ---------------------------------------------------------------

# Variables

variable = "Hello "

puts (variable + "world !")

# ----------------------------------------------------------------

# Advanced variables (data types)

# Variables

string = "John"

integer = 35

float = 7.1 # decimal

# Booleans:

true_variable = true

false_variable = false

no_value = nil

# -------------------------------------------------------------------

# Strings advanced

puts "Hello world"

puts "Hello\" world" # Output = Hello" world

puts "Hello\n world" # Begin new line after Hello

# ---------------------------------------------------------------------

# String functions

var = "test"

print var.length() # 4

# Method to get the string reversed
print var.reverse() # tset

# Check if string contains a certain phrase
print var.include? "test" # true

# Browse true index
print var[2] # e (u can use a range "print var[0,5]")

# Display position of character in index
print var.index("s") # 4

# Method to conver all letters to uppercase
print var.upcase() # TEST

var = "TEST"

# Method to conver all letters to lowercase
print var.downcase() # test

var = "    test       "

# Remove unnecessary spaces
print var.strip() # test

# -----------------------------------------------------------------------

# Math and numbers

print 1+3
# Addition: output 4

print 1-2
# Subtraction: output -1

print 9/3
# Division: output 3

print 2*3
# Multiplication: output 6

print 2**3
# Exponentiation: output 8

print 16%9
# Modulo: output 7

# Variables and numbers

num = 20

# You have to convert the number to a string first. You can use the .to_s
# method/function for that,
puts ("this is a number " + num.to_s)

# Return the absolute value of the number
puts num.abs()

# Round the number
puts num.round()

# Check the Math class in Ruby for complex mathematical operations

# ---------------------------------------------------------------------

# Get user input
puts "Enter Your Name: "

name = gets.chomp() # Use chomp to remove the enter character

puts ("Hello " + name)

# ---------------------------------------------------------------------

# Arrays

array = Array[1, "Hi", true]

puts array[2] # true (put a "-" infront of the index number to start from the end)

# Create an empty array
array = Array.new

# Add or change the value of something in the array
array[0] = false

# Reverse the position of all the elements
puts array.reverse()

# Sort the elements in the array alphabeticly
puts array.sort() # Will return error if different data types are used

# -------------------------------------------------------------------------

# Hashes (dictionary)

states = {
  "Pennsylvania" => "PA",
  "New York" => "NY",
  "Oregon" => "OR",
}

# Print all the things this hash contains
puts states

# Print the value of a key
puts states["Oregon"] # OR

# -------------------------------------------------------------------------

# Methods (functions)

def sayhi(name="Anonymous")
  puts ("Hello" + name + "!")
end

sayhi("John") # Hello!

# ----------------------------------------------------------------------

# If statement

ismale = true

if ismale
  puts "You are male."
else
  puts "You are not male."
end

# Example with "and"

issmart = true

istall = true

if istall and issmart
  puts "You are so perfect"
else
  puts "You are stupid."
end

# You can use the keyword "or" in the if statement. "Or" will execute the
# code in the if statement if at least one of the variables is true

# elsif

issmart = false

istall = true

if istall and issmart
  puts "You are so perfect"
elsif istall and !issmart
  puts "Not good enough"
else
  puts "You are stupid."
end

# ---------------------------------------------------------

# If statements with comparisons

if num == 5
  puts "The variable is equal to 5"
else
  puts "The variable is not equal to 5"
end

# ------------------------------------------------------------------

# While loops

var = 1

while var <= 7
  puts var
  var += 1
end

# --------------------------------------------------------------------

# For loop 1

friends = ["Kevin", "John", "Mark", "Max"]

for element in friends
  puts element
end

# For loop 2

friends.each do |element|
  puts element
end

# For loop 2

for element in 0..7
  puts element
end

# ------------------------------------------------------------------

# Read a file
file = File.open("/path/to/your/file", "r")

puts file.read()

file.close()

# Overwrite a file
file = File.open("/path/to/your/file", "w")

file.write("text")

file.close()

#Append to file
file = File.open("/path/to/your/file", "a")

file.write("\ntext")

file.close()

# Use the r+ mode to read and write

# Use ".readline()" to go to the next line (".readchar" will move your "cursor"
# by one character)
# If you youse the ".write" function after ".readline()" the you will write
# to that the line.

# ----------------------------------------------------------------------

# Classes and objects

class Book
  attr_accessor :title, :author, :pages
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"
book1.pages = 400

puts book1.title

# ------------------------------------------------------------------------

# Modules

module Greet
  def sayhi(name)
    puts "Hello #{name}"
  end

  def saybye(name)
    puts "Hello #{name}"
  end
end

include Greet
Greet.saybye("John")

# Use "require_relative "file"" to use moddules in other scripts

# ----------------------------------------------------------------------

# Run system commands

system("command")
