# guard init rspec
# bundle exec guard
require 'pry'
require 'rspec'

require_relative '../lib/employee'
require_relative '../lib/methods'
describe Employee do
	let(:employee) {Employee.new({"first_name" => "Paul",
															 "last_name" => "Wilson",
															 "annual_income" => "3500",
															 "tax_paid" => "10", "tax_rate" => "35"})}

	it 'exists' do
		expect(employee.class).to eq(Employee)
	end

	it 'has first name' do
		expect(employee.first_name).to eq("Paul")
	end

	it 'has last name' do
		expect(employee.last_name).to eq("Wilson")
	end

	it 'has annual income' do
		expect(employee.annual_income).to eq(3500)
	end

	it 'has taxes paid' do
		expect(employee.tax_paid).to eq(10)
	end

	it 'has tax rate' do
		expect(employee.tax_rate).to eq(0.35)
	end

	it 'calculates refund or liability' do
		expect(employee.calc_tax).to eq(1215)
	end


end















