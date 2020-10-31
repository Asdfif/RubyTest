korzina = {}
sum=0
loop do 
	puts 'Что вы купили?'
	product = gets.chomp
	if product == 'стоп'
		break
	end
	puts 'Цена товара?'
	price = gets.chomp.to_f
	puts 'Количество товара?'
	quantity = gets.chomp.to_f
	korzina[product] = {'Цена' => price, 'Количество' => quantity, 'Сумма' => price*quantity}
	sum = sum+(price*quantity)
end
puts korzina
puts 'Итоговая сумма всех покупок '+sum.to_s

