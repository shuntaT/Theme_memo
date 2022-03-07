puts "じゃんけん..."
def janken
  puts "0(グー) 1(チョキ) 2(パー)"
  player_choice = gets.to_i
  program_choice = rand(3)
  choices = ["グー", "チョキ", "パー"]
  puts "ホイ！"
  puts "----------------"
  puts "あなた：#{choices[player_choice]}を出しました"
  puts "相手：#{choices[program_choice]}を出しました"
  puts "----------------"

  if player_choice == program_choice
    puts "あいこで..."
    return true
  elsif (player_choice == 0  && program_choice == 1)||(player_choice == 1  && program_choice == 2)||(player_choice == 2  && program_choice == 0)
    puts "あっち向いて..."
    puts "0(上) 1(下) 2(左) 3(右)"
    player_direction = gets.to_i
    program_direction = rand(4)
    directions = ["上", "下", "左", "右"]
    puts "ホイ！"
    puts "----------------"
    puts "あなた：#{directions[player_direction]}"
    puts "相手：#{directions[program_direction]}"
    puts "----------------"
    if player_direction == program_direction
      puts "あなたの勝ち"
      return false
    else
      puts "じゃんけん..."
      return true
    end
  else
    puts "あっち向いて..."
    puts "0(上) 1(下) 2(左) 3(右)"
    player_direction = gets.to_i
    program_direction = rand(4)
    directions = ["上", "下", "左", "右"]
    puts "ホイ！"
    puts "----------------"
    puts "あなた：#{directions[player_direction]}"
    puts "相手：#{directions[program_direction]}"
    puts "----------------"
    if player_direction == program_direction
      puts "あなたの負け"
      return false
    else
      puts "じゃんけん..."
      return true
    end
  end
end

next_game = true

while next_game
  next_game = janken
end
