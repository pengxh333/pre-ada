=begin
 * @Author: Tricia Peng
 * @Date: 2021-01-08 16:06:17
 * @LastEditTime: 2021-01-08 16:06:28
 * @FilePath: /Ruby/ada_startJump.rb
=end

#### four simple loops
###red times
# 3.times do
#     puts 'hello!'
# end

# 2.times do |i|
#     puts i
# end 

###red range
## include the high value using ..
# (5..9).each do |num|
#     puts num
# end

## exclude the high value using ...
# (5...9).each do |num|
#     puts num
# end

###red while loop
# i = 0
# while i < 4
#     puts i
#     i += 1
# end

# again = "yes"
# while again == 'yes'
#     puts "would you like to play again? (yes/no)"
#     again = gets.chomp
# end

###red Until loop
# i = 0
# until i == 4
#     puts i
#     i += 1
# end

# i = 0
# until i == 6
#     puts "Guess an integer number between 1 to 10?"
#     i = gets.chomp.to_i
# end
# puts "You are correct!"

####red each
# list = ['ada', 'academy', 'best']
# list.each do |i|
#     puts i
# end

#### block
# [1,2,3,4].each do |number|  # ada prefer do...end over { }
#     puts number * 100 # <= this is a block. :)
#   end
  
# [1,2,3,4].each { |number|
#     puts number * 100 # <= this is a block too! :D
#     }

####blue number assignment
## using times loop
# puts "how many times do you want to play? " 
# play = gets.chomp.to_i
# play.times do
#     puts "please input an integer: "
#     num = gets.chomp.to_i
#     if num % 3 == 0
#         puts "This number is divisible by 3."
#     else
#         puts "This number is not divisible by 3."
#     end
# end

## using while loop
# puts "how many times do you want to play? " 
# play = gets.chomp.to_i
# i = 0
# while i < play
#     puts "please input an integer: "
#     num = gets.chomp.to_i
#     if num % 3 == 0
#         puts "This number is divisible by 3."
#     else
#         puts "This number is not divisible by 3."
#     end
#     i += 1
# end

####blue election assignment
=begin

puts "Welcome to this voting program! \nPlease vote 10 times for \na Donald Duck\nb Minnie Mouse\nc Goofy"
a = 0
b = 0
c = 0
i = 0
while i < 10
    puts "Please input your ##{i+1} vote: "
    v = gets.chomp.downcase
    if v == "a"
        a += 1
    elsif
        v == "b"
        b += 1
    elsif
        v == "c"
        c += 1
    else
        puts "your input in invalid! and this vote would be considered to be empty. Yes or no? Click Return to defaulty Yes"
        inv = gets.chomp.downcase
        if inv == 'no'
            i -= 1
        end
    end
    i += 1
end
puts "The votes number is summarized to be: \na Donald Duck #{a} votes \nb Minnie Mouse #{b} votes\nc Goofy #{c} votes "
win = ""
w = 1
if a > b && a > c
    win = "a Donald Duck"
elsif b > a && b > c
    win = "b Minnie Mouse"
elsif c > a && c > b
    win = "c Goofy"
elsif a == b && a == c
    puts "it seems like everyone has the same amount of votes..."
    win = "everyone"
    w = 3
elsif a == b && a > c
    win = "a Donald Duck & b Minnie Mouse"
    w = 2
elsif a == c && a > b
    win = "a Donald Duck & c Goofy"
    w = 2
else b == c && b > a
    win = "b Minnie Mouse & c Goofy"
    w = 2
end
puts "we have #{w} winner(s) who is/are #{win} !"

=end


####red Arrays https://github.com/Ada-Developers-Academy/ada-build/tree/ruby/learning-to-code/arrays
###blue number assignment v4
=begin

def ordinal(number)
    abs_number = number.to_i.abs
  
    if (11..13).include?(abs_number % 100)
      "th"
    else
      case abs_number % 10
        when 1; "st"
        when 2; "nd"
        when 3; "rd"
        else    "th"
      end
    end
end
def ordinalize(number)
    "#{number}#{ordinal(number)}"
end
puts "Welcome to my number game!\nHow many numbers do you want to enter?"
num = gets.chomp.to_i
pa = []
num.times do |t|
    puts "Enter the #{ordinalize(t+1)} positive integer: "
    num = gets.chomp.to_i
    pa.append(num)
end
puts "Comparing the last number you enter, here are the obsavations: "

pa.length.times do |t|
    if pa[t] > pa.last
        puts "The value at index #{t} is #{pa[t]}, is greater than the last index, #{pa.last}"
    elsif pa[t] == pa.last
        puts "The value at index #{t} is #{pa[t]}, is equal to the last index, #{pa.last}"
    else pa[t] < pa.last
        puts "The value at index #{t} is #{pa[t]}, is less than the last index, #{pa.last}"
    end
end
puts "The maximum number is #{pa.max}"
puts "The minimum number is #{pa.min}"
puts "The average of all the values in the array is #{pa.sum / pa.size}"

=end



####blue Assignment: Student Account Generator
puts "Welcome to this Student Account Generator!"
# puts "How many students' info do you want to enter?"
# num = gets.chomp.to_i + 1
name_lines = File.readlines('student_name.txt')  # => name_lines become a list of lines
num = name_lines.size + 1
names = Array.new(num, 'Name')
ids = Array.new(num, 'ID')
emails = Array.new(num, 'Email')
# first_name = ""
# last_name = ""

r = (100000..999999).to_a().shuffle
(num-1).times do |num|
    # puts "Enter first name of student ##{num+1}: "
    # first_name = gets.chomp.upcase
    # puts "Enter last name of student ##{num+1}: "
    # last_name = gets.chomp.upcase
    # names[num+1] = name_lines[num]
    ns = name_lines[num].split(" ")
    if ns.count == 2
        first_name = ns[0].upcase
    else
        first_name = "#{ns[0]} #{ns[1]}".upcase
    end
    last_name = ns[-1].upcase
    # names[num+1] = first_name + " " + last_name
    names[num+1] = first_name + " " + last_name
    id = ids[num+1] = r.pop
    a = id.to_s[-3..-1]
    if first_name.include? " "
        emails[num+1] = first_name.split(" ").first[0]+ first_name.split(" ").last[0] + last_name + a + "@adadevelopersacademy.org"
    else
        emails[num+1] = first_name[0]+ last_name + a + "@adadevelopersacademy.org"
    end
end
puts "Here are the students accounts info:\n\n"
max = names.group_by(&:length).max.first
names.zip(ids, emails).each do |names, ids, emails|
  puts "%-#{max}s %-#{max}s %-#{max}s" % [names, ids, emails]
#   puts "%s %s %s" % [names, ids, emails]  # => not aligned
end


####red Hash
