def janken
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー）"
  janken_player = gets.chomp.to_i
  janken_cp = rand(3)
  jankens = ["グー", "チョキ", "パー"]

  puts "ホイ"
  puts "-----------------------------"
  puts "あなた：#{jankens[janken_player]}"
  puts "相手：#{jankens[janken_cp]}"
  puts "-----------------------------"
  
  if janken_player == janken_cp
    puts "あいこです"
    puts "もう一度..."
    puts "-----------------------------"
    return true
    
  elsif (janken_player == 0 && janken_cp == 1)||(janken_player == 1 && janken_cp == 2)||(janken_player == 2 && janken_cp == 0)
    puts "あっち向いて...(指の方向を選んでください)"
    puts "0(上)1(下)2(右)3(左)"
    
    look_player = gets.chomp.to_i
    look_cp = rand(4)
    ltw = ["上", "下", "右","左"]
    
    puts "ホイ"
    puts "-----------------------------"
    puts "あなた：#{ltw[look_player]}"
    puts "相手：#{ltw[look_cp]}"
    puts "-----------------------------"
    
    if look_player == look_cp
      puts "あなたの勝ちです"
      return false
    else
      puts "もう一度！"
      return true
    end
    
  elsif (janken_player == 0 && janken_cp == 2)||(janken_player == 1 && janken_cp == 0)||(janken_player == 2 && janken_cp == 1)
    puts "あっち向いて...(顔の方向を選んでください)"
    puts "0(上)1(下)2(右)3(左)"
    
    look_player = gets.chomp.to_i
    look_cp = rand(4)
    ltw = ["上", "下", "右","左"]
    
    puts "ホイ"
    puts "-----------------------------"
    puts "相手：#{ltw[look_cp]}"
    puts "あなた：#{ltw[look_player]}"
    puts "-----------------------------"
    
    if look_player == look_cp
      puts "あなたの負けです"
      return false
    else
      puts "もう一度！"
      return true
    end
  else 
    puts "0から2までの数字を1つ入力してください"
    return true
  end
end

nextgame = true

while
  nextgame = janken
end