require 'csv'

CSV.open('file1.csv', 'r') do |row|
  p row
end