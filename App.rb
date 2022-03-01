require_relative 'User'
require_relative 'Dice'
require_relative 'Wallet'
class App 
  # attr_accessor :Dice 
  # require_relative 'Dice'

  

  def initialize
    welcome
    @user = create_user
  end

  def welcome
    puts "Welcome to my App"
    puts "Let's get started"
  end

  

  def create_user
    puts "What is your first name?"
    f_name = gets.strip
    puts "What is your last name?"
    l_name = gets.strip
    puts "How old are you?"
    age = gets.strip.to_i
    puts "Create Wallet"

    
    bank = gets.strip.to_i

    @user = User.new(f_name, l_name, age, bank)
  
    # puts @user.first_name
    # puts @user.last_name
    # puts @user.age
    # puts @user.bank
    menu
  end

  def menu 
    puts "1. Choose a Game"
    puts "2. Current Balance"
    puts "3. Exit"
  
    menu_choice = gets.strip.to_i

    if menu_choice == 1 
      # puts "game"
      puts 'How much would you like to bet?'
      gets.strip.to_f
      Dice.new
      
      menu
      elsif
      menu_choice == 2
      puts 'This is you current balance' 
      puts  " $" + "#{@user.bank}"
    menu
    elsif menu_choice == 3
      puts "Good Bye"
    elsif
      
      exit
    else
      menu
    end

    
   
    # def Game
    #   puts '1. Dice'
    #   puts '2. ???'
    #   Game_choice = gets.strip.to_i
    #   if Game_choice == 1
    #     puts 'Dice'
    #   elsif Game_choice == 2

    #    puts '??'
      
    #   else
    #       menu
    # end
  
  end
end


app = App.new
