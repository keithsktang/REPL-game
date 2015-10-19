class Quiz

#work around for program halt within gets method
pause = ""
answer1, answer2, answer3, answer4, answer5, answer_bonus = ""
@right_answer = 0
@num = 0
#initialize value of class instance variables
def initialize (right_answer, num)
  @right_answer += 1
  @num += 5
end

def self.right_answer
  @right_answer
  end

def self.num
  @num
  end

# displays 5 stars for each correct answer
def self.show_stars(num)
num.times do | x |
    print "*"
  end
end

def self.err_key
  @err_key
end

@err_key = 0

# calculated number of correct answers and stars
def self.correct_calc(right_answer, num)
  @right_answer += 1
  @num += 5
end
# checks for erroneous keyboard input
def self.wrong_input(key_stroke)
  key_input = /[^1-4]/
  if key_stroke.match(key_input)
    puts "You have not entered keys 1-4.  Please try again."
    return false
  else
    return true
  end
end
#pause program until correct key inputs
# def self.wrong_pause
#   until self.wrong_input(answer1) == true
#     answer1 = gets.chomp
#   end
# end

def self.end_program
  exit
end

def self.build_triangle(num)
output = ""
i = num
j = (num + 1) - num
num.times do | x |
   print " " * j
   print"*" * i
   print "\n"
   i -= 1
   j += 2
  end
 end

puts <<EOF


                       -----------------------------
                       Welcome to Kommand Line King!
                       -----------------------------

       Your resource for improving your Unix/Linux command line chops.
       Five questions follow to test your skills.  Your goal will be to
       answer all 5 correctly, collecting 25 stars. Then you can go on to
       the bonus round with a chance to win a fabulous Wyncode prize!

                            Like to play?
              Press 'Enter' to begin or 'Control-C' to exit.
EOF
pause = gets
puts <<EOF

 What command line prompt will change directories?
  1) ac
  2) dc
  3) cd
  4) bc

EOF
puts "Please 'Enter' the corresponding line number of your answer:"
answer1 = gets.chomp
until wrong_input(answer1) == true
  answer1 = gets.chomp
end
case answer1
when "3"
  self.correct_calc(@right_answer, @num)
  show_stars(num)
else
  show_stars(num)
end
puts <<EOF

  What command prints your working directory to standard output?
    1) pwd
    2) print dir
    3) dir
    4) pdw

EOF
puts "Please 'Enter' the corresponding line number of your answer :"
answer2 = gets.chomp
until wrong_input(answer2) == true
  answer2 = gets.chomp
end
case answer2
when "1"
  self.correct_calc(@right_answer, @num)
  show_stars(num)
else
  show_stars(num)
end

puts <<EOF

  With which command can you quickly make a file?
    1) new_file
    2) touch
    3) file
    4) feel

EOF
puts "Please 'Enter' the corresponding line number of your answer:"
answer3 = gets.chomp
until wrong_input(answer3) == true
  answer3 = gets.chomp
end
case answer3
when "2"
  self.correct_calc(@right_answer, @num)
  show_stars(num)
else
  show_stars(num)
end

puts <<EOF

 Which command selects files that meet search criteria and acts on action criteria?
    1) grep
    2) search
    3) ls
    4) find

EOF
puts "Please 'Enter' the corresponding line number of your answer:"
answer4 = gets.chomp
until wrong_input(answer4) == true
  answer4 = gets.chomp
end
case answer4
when "4"
  self.correct_calc(@right_answer, @num)
  show_stars(num)
else
  show_stars(num)
end

puts <<EOF

 Which command searches one or more text files for a pattern?
    1) grip
    2) search
    3) grep
    4) diff

EOF
puts "Please 'Enter' the corresponding line number of your answer: "
answer5 = gets.chomp
until wrong_input(answer5) == true
  answer5 = gets.chomp
end
case answer5
when "3"
  self.correct_calc(@right_answer, @num)
  show_stars(num)
  else
  show_stars(num)
end

case @right_answer
when 4
  puts <<-EOF

                                    Great job!!!
                  You've answered 4 out of the 5 questions correctly.
                        You have strong command line skills.

  EOF
  self.end_program
when 3
  puts <<-EOF
                                      Not bad.
                    You've answered 3 out of 5 questions correctly.

  EOF
  self.end_program
when 2
  puts <<-EOF
                      You've answered 2 questions correctly.
                  You might want to hit the lecture slides again.

  EOF
  self.end_program
when 1
  puts <<-EOF
                You've answered 1 question correctly. What can I say?

  EOF
  self.end_program
when 0
  puts <<-EOF
                      You've answered no questions correctly!

  EOF
  self.end_program
else
  puts <<-EOF


                            Congratulations!
                            ----------------

  You've' answered all 5 questions correctly, collecting 25 stars, and can
  continue to the bonus question.  Press 'Enter' to get your bonus question
  or 'Control-C' to quit and keep your 25 stars.
  EOF
end

pause = gets
puts <<EOF

  What numeric argument to 'chmod' allows the owner, group, and others to read,
  write and execute a file? (Admittedly, not such a great idea.)
     1) 755
     2) 640
     3) 644
     4) 777

EOF

    puts "Please 'Enter' the corresponding line number of your answer: "
    answer_bonus = gets.chomp
    case answer_bonus
    when "4"
    self.correct_calc(@right_answer, @num)
    self.build_triangle(num)
    puts  <<-EOF

                             ********************
                             You are a rock star!
                             ********************

    You've won your own parking space at GP, and a key to a private bathroom,
    free from the odor of paint and volatile organic compounds.
    See Manny for details!

                  And thanks for playing Kommand Line King!


    EOF
    else
      show_stars(num)
      puts <<-EOF

                              **************
                              Excellent job!
                              **************

      You didn't answer the bonus question correctly, but you certainly know your
      command line.  Go ahead and change some of those pesky OSX system files.

                            Thanks for playing!


      EOF
    end
end #class
