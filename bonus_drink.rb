class BonusDrink
  def self.total_count_for(amount)
    drank = amount #最初に飲む本数
    present = 0
 
    while(drank >= 3)
      get = (drank / 3).floor #もらう本数 
      present = present + get #もらった本数の合計
      leave = drank % 3
      drank = get + leave
    end
    return amount + present
  end
end

puts BonusDrink.total_count_for(100); #100が買う本数
