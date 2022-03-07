require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.chomp

if memo_type == "1"
  puts "拡張子を除いたファイルを入力してください"
  file_name = gets.chomp
  p "メモしたい内容を入力してください"
  p "完了したらCtrl + Dを押してください"
  CSV.open("#{file_name}.csv", "w") do |test|
    contents = $stdin.readlines
    test << contents
  end

elsif memo_type == "2"
  puts "拡張子を除いたファイルを入力してください"
  existing_file = gets.chomp
  p "メモしたい内容を入力してください"
  p "完了したらCtrl + Dを押してください"
  CSV.open("#{existing_file}.csv", "a") do |test|
    contents = $stdin.readlines
    test << contents
  end
end
