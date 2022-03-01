class Dice
  include Math
  
    def initialize

      roll
      show_dice
     
    
    end
    
    def roll
      # puts 'place you bet'
      @die1 = 1 + rand(6)
      @die2 = 1 + rand(6) 
    end
    
    def show_dice
      puts 'Roll the Dice'
      user_guess = gets.strip.to_i
      result = @die1 + @die2 
      puts 'Your Result is...'
      show_sum
      
     

      if user_guess == result
        puts "You win"
      else
        puts "you loose"
        # menu
      end
    end
  # end 

    
    def show_sum
      print "Sum of dice is ", @die1 + @die2, ".\n"
    end 






   end
   
  #  d = Dice.new
  #  d.show_dice
  #  puts
  #  d.show_sum 