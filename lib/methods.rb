require 'csv'
require 'pry'
require_relative 'employee'


def get_employees(file)
  employee_list = []
  CSV.foreach(file, headers: true ) do |trans|
     employee_list << Employee.new(trans)
  end
  employee_list
end


def thousand(value)
  first_three = value.round(0).abs.to_s[-3..-1]
  second_three = value.round(0).abs.to_s[0..-4]
  second_three + ',' +first_three
end


employee_list = get_employees('../taxes.csv')

employee_list.each do |e|
  if e.calc_tax > 0
    ending = " owes $#{thousand(e.calc_tax)} in taxes."
  else
    ending = " will receive a refund of $#{thousand(e.calc_tax)}."
  end
  puts puts "#{e.first_name} #{e.last_name}"  + ending
end

