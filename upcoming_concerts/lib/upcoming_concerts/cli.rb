# This is our CLI Controller

class UpcomingConcerts::CLI

  def call
    show_concerts
    menu
    goodbye
  end

  def show_concerts
    puts "Here are the next five concerts in the Phoenix Area:"
   
    Concerts.all.each_with_index do |num, x|
      x = 1
      puts "#{x}. " + Concerts.concert_1[:artist]
      puts "#{x + 1}. " + Concerts.concert_2[:artist]
      puts "#{x + 2}. " + Concerts.concert_3[:artist]
      puts "#{x + 3}. " + Concerts.concert_4[:artist]
      puts "#{x + 4}. " + Concerts.concert_5[:artist]
    end
end

  def menu  ##### This will redirect the user to the concert they are interested in ######
    input = nil
    while input != "exit"
      puts "Which concert do you want to know more about? Type 1 - 5, or type exit."
      input = gets.strip.downcase

      if input == "1" 
        puts Concerts.call_1
      elsif input == "2"
        puts Concerts.call_2
      elsif input == "3"
        puts Concerts.call_3
      elsif input == "4"
        puts Concerts.call_4
      elsif input == "5"
        puts Concerts.call_5
      elsif input == "exit"
      end
    end
  end


  def goodbye
    puts "Come back to see the upcoming concerts in Phoenix!"
  end
end