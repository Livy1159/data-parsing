require 'csv'

csv = CSV.read('file2.csv', headers: false)

csv.each do |row|
  p row
end