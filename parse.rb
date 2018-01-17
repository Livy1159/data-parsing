require 'csv'

  csv_array = []

  csv1 = CSV.read('file1.csv', headers: false)

  csv1.each do |row|
    split_array1 = row[0].split(' ')
    csv_array << split_array1
  end

  csv2 = CSV.read('file2.csv', headers: false)

  csv2.each do |row|
    split_array2 = row[0].split('|')
    csv_array << split_array2
  end

  csv3 = CSV.read('file3.csv', headers: false)

  csv3.each do |row|
    csv_array << row
  end
  csv_array