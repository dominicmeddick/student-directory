def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :novemeber}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts " ----------------- "
end
def print(names)
  names.each do |name|
  puts "#{name[:name]} (#{name[:cohort]} cohort)"
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def interactive_menu
  students = []
  loop do
   # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
  puts "9. Exit"

    # 2. read the input and save it into a variable

    selection = gets.chomp
    # 3. do what the user has asked

   case selection
   when "1"
     # input the students
   when "2"
    # show the students
    when "9"
      # this will case the program to terminate
    else 
      puts "I don't know what you mean, try again"
    end
  end
end