require "byebug"

class Array

    def my_each(&prc)
        i = 0
        while i < self.length
            prc.call(self[i])
            i += 1
        end
        self
    end

    def my_select(&prc)
        mutated_arr = []
        self.my_each do |ele| 
            mutated_arr << ele if prc.call(ele)
        end
        mutated_arr
    end

    def my_reject(&prc)
        mutated_arr = []
        self.my_each do |ele| 
            mutated_arr << ele if !prc.call(ele)
        end
        mutated_arr
    end

    def my_any?(&prc)
        self.my_each do |ele| 
            if prc.call(ele)
                return true 
            else
                return false
            end
        end
    end
    
    def my_flattern(&prc)
        flat = []
        self.my_each do |ele| 
            if prc.call(ele)
                ele.my_each {|mini_ele| flat << mini_ele}
            else
                flat << ele
            end
        end
        flat
    end

    

    




end




arr = [1, 2, 3, 4, 5]

# p arr.my_each { |num| puts num } 
# p arr.my_select { |num| num.even?}
# p arr.my_reject { |num| num.even?}
# p arr.my_any? { |num| num.even?}


arr2 = [1, 2, 3, [4, [5, 6]], [[[7]], 8]]
arr2.my_flatten {|ele| ele.is_a?}
# 



    # def my_reject(&prc)
    #     mutated_arr = []
    #     i = 0 
    #     while i < self.length
    #         mutated_arr << self[i] if !prc.call(self[i])
    #         i +=1
    #     end
    #     self

    # end

    # def my_any(&prc)
    #     self.my_each {|ele| return true if prc.call(ele)}
    # end

    # # def my_flattern(&prc)
    #     self.my_each {|ele| prc.call(ele)}
    # end

    
