promotype_array = []
promovalue_array = []

file = File.read("promocodes.txt").each_line do |line|
	data = line.split(" ")    
	promotype_array.push(data[0])
	promovalue_array.push(data[1])
end

File.open("newpromo.txt",'w') do |write|
	promotype_array.zip(promovalue_array).each do |type, value|
		write.puts 'Promocode.create(promotype: ' + type + ', promovalue: "' + value + '")'
	end 
end


