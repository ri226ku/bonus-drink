buy = gets.to_i  # 標準入力を整数に変換
present = 0
flg = 0

flg = 0
if buy >= 3
  drank = buy
  flg = 1
  while flg==1 do
    get = (drank / 3).floor
    present = present + get
    leave = drank % 3
    drank = get + leave
    if drank < 3
      flg=0
    end
  end
end
puts buy + present
