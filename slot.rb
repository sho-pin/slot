puts "スロットゲームへようこそ"
puts "ルール：10枚bet=>中段に数字が3つ揃うと+100コイン"
puts "ルール：30枚bet=>中段に数字が2つ揃うと+100コイン"
puts "ルール：50枚bet=>中段に7が1つ出ると+100コイン"

coin = 1000
while true
  num1 = rand(9)
  num2 = rand(9)
  num3 = rand(9)
  num4 = rand(9)
  num5 = rand(9)
  num6 = rand(9)
  num7 = rand(9)
  num8 = rand(9)
  num9 = rand(9)
  puts "-------------"
  puts "残りコイン数:#{coin}"
  puts "何コインBetしますか？"
  puts "1(10コイン) 2(30コイン) 3(50コイン) 4(やめとく)"
  use_coin = gets.to_i
  if use_coin == 1
    if coin < 10
      puts "GAME-OVER"
      break
    end
  elsif use_coin == 2
    if coin < 30
      puts "Bet額を下げてください"
      next
    end
  elsif use_coin == 3
    if coin < 50
      puts "Bet額を下げてください"
    end
  elsif use_coin == 4
    puts "残りコイン数:#{coin}"
    puts "またね"
    break
  else
    puts "1~4を押してください"
    next
  end

  puts "エンターを３回押してください"
    gets
    puts "|#{num1}| || ||"
    puts "|#{num2}| || ||"
    puts "|#{num3}| || ||"
    gets
    puts "|#{num1}| |#{num4}| ||"
    puts "|#{num2}| |#{num5}| ||"
    puts "|#{num3}| |#{num6}| ||"
    gets
    puts "|#{num1}| |#{num4}| |#{num7}|"
    puts "|#{num2}| |#{num5}| |#{num8}|"
    puts "|#{num3}| |#{num6}| |#{num9}|"

    if use_coin == 1
      coin -= 10
      puts "残りコイン数:#{coin}"
      if (num2 == num5) && (num5 == num8)
        puts "おめでとう中段に７が3つ出ました"
        coin += 100
      else
        puts "残念"
      end
    elsif use_coin == 2
      coin -= 30
      puts "残りコイン数:#{coin}"
      if (num2 == num5) || (num2 == num8) || (num5 == num8) 
        puts "おめでとう中段に数字が2つ揃いました"
        coin += 100
      end
    elsif use_coin == 3
      coin -= 50
      puts "残りコイン数:#{coin}"
      if (num2 == 7) || (num5 == 7) || (num8 == 7)
        puts "おめでとう中段に７が1つ出ました"
        coin += 100
      end
    end
end
