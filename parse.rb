require 'csv'

def swap(array, index_1, index_2)
  temp = array[index_1]
  array[index_1] = array[index_2]
  array[index_2] = temp
end

def create_array
  csv_array = []

  csv1 = CSV.read('file1.csv', headers: false)

  csv1.each do |row|
    split_array1 = row[0].split(' ')
    split_array1.delete_at(2)
    split_array1[3].gsub!('-', '/')
    split_array1.each do |item|
      if item == "F"
        item.replace("Female")
      elsif item == "M"
        item.replace("Male")
      end 
    end
    csv_array << split_array1
  end

  csv2 = CSV.read('file2.csv', headers: false)

  csv2.each do |row|
    split_array2 = row[0].split('|')
    split_array2.delete_at(2)
    swap(split_array2, 3, 4)
    split_array2[3].gsub!('-', '/')
    split_array2.each do |item|
      if item == "F"
        item.replace("Female")
      elsif item == "M"
        item.replace("Male")
      end 
    end
    csv_array << split_array2
  end

  csv3 = CSV.read('file3.csv', headers: false)

  csv3.each do |row|
    swap(row, 3, 4)
    csv_array << row
  end
  csv_array
end

# def output_1
#   csv_array = create_array
#   i = 0
#   while i < csv_array.length
#     csv_array.each do |array|
#       if array.include?("Female")
#         csv_array.unshift(array)
#       end
#     end
#     i += 1  
#   end
#   p csv_array
# end

# output_1




















