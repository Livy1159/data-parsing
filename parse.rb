require 'csv'

def create_array
  csv_array = []

  csv1 = CSV.read('file1.csv', headers: false)

  csv1.each do |row|
    split_array1 = row[0].split(' ')
    split_array1.delete_at(2)
    csv_array << split_array1
  end

  csv2 = CSV.read('file2.csv', headers: false)

  csv2.each do |row|
    split_array2 = row[0].split('|')
    split_array2.delete_at(2)
    csv_array << split_array2
  end

  csv3 = CSV.read('file3.csv', headers: false)

  csv3.each do |row|
    csv_array << row
  end
  p csv_array
end

create_array

# def output_1

# end



















