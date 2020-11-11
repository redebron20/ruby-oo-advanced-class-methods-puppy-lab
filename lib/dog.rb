require 'pry'

# Add your code here

class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end
    
    #binding.pry

    def self.print_all
        new_arr = []
        @@all.each do |dog|
            new_arr << dog.name
        end
        new_arr.join
        
    end
end