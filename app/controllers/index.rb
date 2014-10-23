get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/chicken' do
	erb :chicken
end

# post '/word' do
# 	input_word = params[:user_input].downcase.chars.sort.join
# 	anagram_list = Word.anagrams(input_word)
# 	str = anagram_list.join("+")
  
# 	redirect to("/?word=#{str}")
# end

get '/*' do
	word = "#{request.path}"[1..-1]
	anagram_list = Word.anagrams(word)
	erb :general, :locals => {:anagram => anagram_list,
		:original_word => word}
end