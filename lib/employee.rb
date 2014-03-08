

class Employee
	attr_reader :first_name, :last_name, :annual_income, :tax_paid, :tax_rate, :calc_tax

  def initialize(hash)
    @first_name = hash["first_name"]
    @last_name  = hash["last_name"]
    @annual_income = hash["annual_income"].to_i
    @tax_paid = hash["tax_paid"].to_i
    @tax_rate = (hash["tax_rate"].to_f / 100)
  end

 	def calc_tax
 		(@annual_income * @tax_rate) - @tax_paid
 	end


end


