puts "じゃんけん..."

#じゃんけん
def janken
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

player_hand = gets.to_i
program_hand = rand(3)

jankens = ["グー","チョキ","パー"]
puts "ホイ！"
puts "---------------"
puts "あなた:#{jankens[player_hand]}を出しました"
puts "相手:#{jankens[program_hand]}を出しました"

if player_hand == program_hand
  puts "あいこで..."
  return true
end
end

next_game = true

while next_game
  next_game = janken
end

#あっち向いてホイ
def hoi
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  
  player_direction = gets.to_i
  program_direction = rand(4)
  
  hois = ["上","下","左","右"]
  puts "ホイ！"
  puts "---------------"
  puts "あなた:#{hois[player_direction]}"
  puts "相手:#{hois[program_direction]}"
  
if player_direction == program_direction
  puts "勝ち!"
  return false
else player_direction != program_direction
  puts "やり直し"
  return true
end
end

next_game = true

while next_game
  next_game = hoi
end
