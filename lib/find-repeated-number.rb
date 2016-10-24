require 'pry'

# def find_repeated_number(array)
#   counter = 1
#   orange = array[counter]
#   array.each do |apple|
#     binding.pry
#     if apple == orange
#       return orange
#     else
#       orange = array[counter += 1]
#     end
#   end
# end

# above only works for consecutive dupes

def find_repeated_number(array)
  counter = 0
  until counter > array.length do
    apple = array[counter]
    array.each_with_index do |orange, index|
      if index > counter
        if apple == orange
          return orange
        end
      end
    end
    counter += 1
  end
end
