# frozen_string literal: true

require 'models/student'

describe Student do
  context '.say_hi' do
    it 'should only say hi' do
      expect(described_class.say_hi).to eq('hi')
    end
  end
  context '#say_hi' do
    it 'should present her/him whit name' do
      subject.name = 'Sarah'

      expect(subject.say_hi).to eq('hi, i\'m Sarah')
    end
    it 'should present her/hi with default name' do
      expect(subject.say_hi).to eq('hi, i\'m Unknown')
    end
end
