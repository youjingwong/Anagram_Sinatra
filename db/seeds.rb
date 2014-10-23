
File.open('words').each do |row|
	Word.create name: row.chomp,
							downcase: row.chomp.downcase.chars.sort.join
end