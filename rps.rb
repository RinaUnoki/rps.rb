def janken # jankenメソッドの中でじゃんけん中の処理を書く
    puts "[0]:グー\n[1]:チョキ\n[2]:パー"
    player_hand = gets.to_i

    program_hand = rand(3)

    jankens = ["グー", "チョキ", "パー"]

    puts "あなたの手:#{jankens[player_hand]}, 相手:#{jankens[program_hand]}"

if player_hand == program_hand
      puts "あいこで"
      return true # あいこの場合、trueを返す(ここは true のみでもOK)
elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      puts "あっち向いて...(指）\n[0]:上\n[1]:右\n[2]:下\n[3]:左"
      player_finger = gets.to_i
      program_face = rand(4)
      hoi = ["上", "右", "下", "左"]
      puts "ホイ！あなた:#{hoi[player_finger]}, 相手:#{hoi[program_face]}"
if (hoi[player_finger]) == (hoi[program_face])
    puts "あなたの勝ち"
else 
    puts "最初はグー、じゃんけん..."
    next_game = janken # jankenメソッドの返り値(true/false)がnext_gameに代入される
end

    
       return false# 勝ちの場合、falseを返す(ここは false のみでもOK)
else
      puts "あっち向いて...（顔）\n[0]:上\n[1]:右\n[2]:下\n[3]:左"
      player_face = gets.to_i
      program_finger = rand(4)
      hoi = ["上", "右", "下", "左"]
      puts "ホイ！あなた:#{hoi[player_face]}, 相手:#{hoi[program_finger]}"

if (hoi[player_face]) == (hoi[program_finger])
    puts "あなたの負け"
else
    puts "最初はグー、じゃんけん..."
    next_game = janken # jankenメソッドの返り値(true/false)がnext_gameに代入される
end
end
   
   
  return false# 負けの場合、falseを返す(ここは false のみでもOK)

end# jankenメソッド終わり

  next_game = true # 1回目を実行するためにtrueをnext_gameに代入

  puts "最初はグー、じゃんけん..."

while next_game do # next_gameがtrue(あいこ)の間は繰り返し。false(勝ち・負け)になれば繰り返し終了
    next_game = janken # jankenメソッドの返り値(true/false)がnext_gameに代入される
end
