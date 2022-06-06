class File

    file = File.open("dictionary.txt")

    def initialize
        @file_data = file.readlines.map(&:chomp)
    end
    
    file.close


end