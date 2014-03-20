def hex_to_decimal(hex)
  decimal = []
  hex.each_char do |character|
    if character.match(/^[[:alpha:]]$/) == nil
      decimal << character.to_i
    else
     character.upcase!
     ref = {"A"=>10,"B"=>11,"C"=>12,"D"=>13,"E"=>14,"F"=>15}
     decimal << ref[character]
    end
  end
  final = 0
  incrementer = decimal.length - 1
  decimal.each { |conversion| final += (conversion * (16**incrementer)); incrementer -= 1 }
  final
end
