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
    csv_array << split_array1
  end

  csv2 = CSV.read('file2.csv', headers: false)

  csv2.each do |row|
    split_array2 = row[0].split('|')
    split_array2.delete_at(2)
    swap(split_array2, 3, 4)
    split_array2[3].gsub!('-', '/')
    csv_array << split_array2
  end

  csv3 = CSV.read('file3.csv', headers: false)

  csv3.each do |row|
    swap(row, 3, 4)
    csv_array << row
  end
  p csv_array
end

create_array




















