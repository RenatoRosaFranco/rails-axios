require 'rails_helper'

RSpec.describe Task, type: :model do
 	subject { FactoryBot.create(:task) }

 	describe 'Object' do
 	  it 'respond to all atributes' do
 	  	expect(subject).to respond_to(:name)
 	  	expect(subject).to respond_to(:description)
 	  end
 	  it 'a valid object' do
 	 		expect(subject).to be_valid
 	  end
 	end
 	describe 'Invalid object' do
 		subject { Task.new }
 		it 'invalid without name' do
 			subject.description = "Simple description"
 			expect(subject).not_to be_valid
 		end
 	end
end
