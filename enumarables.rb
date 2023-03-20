class Array

def my_each(&prc)
    i = 0
    while i < self.length
        prc.call(self[i])
    i+=1
    end
    return self
end

def my_select(&prc)
result = []
self.my_each do |ele|
    result << ele if prc.call(ele)
end
result
end

def my_reject(&prc)
    result = []
    self.my_each do |ele|
        result << ele if !prc.call(ele)
    end
    result
end

def my_all?(&prc)
    count = 0
    self.my_each do |ele|
        if prc.call(ele) == true
            count +=1
        end
    end
    count == self.length
end


def my_any?(&prc)
    count = 0
    self.my_each do |ele|
        if prc.call(ele) == true
            count +=1
        end
    end
    count > 0
end 

def my_flatten
    result = []
    self.my_each do |ele|
        if ele.is_a?(Array)
        result += ele.my_flatten
        else
             result << ele    
        end
    end
    return result
end

def my_zip (arg*)
    #shold return self.length new array
    result = Array.new(self.length){Array.new(self.length)}
    arg.my_each do |arg|
        







end