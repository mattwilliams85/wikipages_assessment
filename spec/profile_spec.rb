require 'rails_helper'

describe Profile do
	it { should validate_presence_of :name }
	it { should validate_presence_of :content }
	it { should validate_presence_of :height }
	it { should validate_presence_of :ethnicity }
	it { should validate_presence_of :status }
	it { should validate_numericality_of :height }
end
