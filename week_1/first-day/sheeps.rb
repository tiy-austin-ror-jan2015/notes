wheat = "🌾 "
sheep = "🐑 "

field = [
  [wheat, wheat, wheat, wheat, wheat, wheat, wheat, wheat],
  [wheat, wheat, wheat, wheat, wheat, wheat, wheat, wheat],
  [wheat, wheat, sheep, wheat, wheat, wheat, wheat, wheat],
  [wheat, wheat, wheat, wheat, wheat, wheat, wheat, wheat],
  [wheat, wheat, wheat, wheat, wheat, wheat, wheat, wheat]
]

def move_sheep(field, sheep)
  field.each do |row|
    if row.include?(sheep)
      row.shuffle!
    end
  end
end

def print_field(field)
  width = field.first.length
  puts "/#{"--"  * width}\\"
  field.each do |row|
    print "|"
    row.each do |cell|
      print cell
    end
    puts "|"
  end
  puts "\\#{"--"  * width}/"
end


loop do
  system('clear')
  move_sheep(field, sheep)
  print_field(field)
  sleep 3
end
