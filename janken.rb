hands_type = ["グー","チョキ","パー"]
direction = ["上","下","左","右"]


border = "-----------------------------"
player_result1 = false 
player_result2 = false 
while !player_result2 
  puts "じゃんけん..."

    for count in 1.. do
      puts"0(グー)1(チョキ)2(パー)3(戦わない)"

      player_hands = gets.to_i
      com_hands = rand(0..2)
      
      while player_hands != 0 && player_hands != 1 && player_hands != 2 && player_hands != 3
        puts "::入力が違います"
        puts"0(グー)1(チョキ)2(パー)3(戦わない)"
        player_hands = gets.to_i
      end

      if player_hands == 3
        break
      end

      if count == 1
        puts "ホイ！"
      else 
        puts "ショ！"
      end
      puts border
      puts "あなた：#{hands_type[player_hands]}を出しました"
      puts "相手：#{hands_type[com_hands]}を出しました"

      if player_hands == com_hands
          puts "あいこで..."
          next 
      elsif (player_hands == 0 && com_hands == 1)||(player_hands == 1 && com_hands == 2)||(player_hands == 2 && com_hands == 0)
          puts "じゃんけん => あなたの勝ち"
          player_result1 = "win"
          break
      else 
          puts "じゃんけん => あなたの負け"
          player_result1 = "lose"
          break
      end
    end
    
    for count in 1.. do

        if player_hands == 3
            player_result2 = "fin"   
            break
        end

        puts "#{border}\nあっち向いて〜"
        puts"0(上)1(下)2(左)3(右)"
        player_direction = gets.to_i
        com_direction = rand(0..3)

        while player_direction != 0 && player_direction != 1 && player_direction != 2 && player_direction != 3
            puts "::入力が違います"
            puts"0(上)1(下)2(左)3(右)"
            player_direction = gets.to_i
        end
    
        puts "ホイ！\n" +  border
        puts "あなた：#{direction[player_direction]}"
        puts "相手：#{direction[com_direction]}"
        
        if player_direction == com_direction
            # puts "勝敗決定" 
            player_result2 = "fin"      
            break
        else 
            puts "<<やり直し>>\n#{border}\n#{border}"
            player_result1 = nil
        end
        break
    end
end

#結果表示
if player_result1 == "win"
    puts "WIN!!"
elsif player_result1 == "lose"
    puts "LOSE..."
else
    puts "終了しました"
end
