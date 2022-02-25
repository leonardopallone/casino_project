class User 
  attr_accessor :first_name, :last_name, :age, :bank

  def initialize(first_name, last_name, age, bank)
    @first_name = first_name
    @last_name = last_name
    @age = age 
    @bank = bank
  end

  def full_name 
     "#{first_name} #{last_name} #{age} $#{bank}"
  end

  def change_age(num)
    @age = num 
  end
  def change_bank (num)
    @bank = num
  end
 end