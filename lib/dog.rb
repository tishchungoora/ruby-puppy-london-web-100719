class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each do |dog_instance|
            puts "#{dog_instance.name}"
        end
    end

    def save
        @@all << self
    end

end