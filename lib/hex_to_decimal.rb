def hex_to_decimal(hex)
  conversions = []
  hex.each_char do |character|
    if character.match(/^[[:alpha:]]$/).nil?
      conversions << character.to_i
    else
     character.upcase!
     ref = { 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }
     conversions << ref[character]
    end
  end
  final = 0
  incrementer = conversions.length - 1
  conversions.each do |conversion|
    final += (conversion * (16**incrementer))
    incrementer -= 1
  end
  final
end
