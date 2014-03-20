def hex_to_decimal(hex)
  decimal = []
  hex.each_char do |hex|
    if hex.match(/^[[:alpha:]]$/) == nil
      decimal << hex.to_i
    else
     hex.upcase!
     ref = {"A"=>10,"B"=>11,"C"=>12,"D"=>13,"E"=>14,"F"=>15}
     decimal << ref[hex].to_i
    end
  end
  final = 0
  incrementer = decimal.length.to_i - 1
  decimal.each { |conversion| final += (conversion * (16**incrementer)); incrementer -= 1 }
  final
end
