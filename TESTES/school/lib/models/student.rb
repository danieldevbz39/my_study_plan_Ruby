# frozen_string literal: true

# Student's model/logic
class Student
    attr_accessor :name

    def initialize(name = 'Unknown')
      @name = name
    end

    def self.say_hi
      'hi'
    end

    def say_hi
      "hi, i'm #{name}"
    end
end