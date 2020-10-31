require 'matrix'

arr = Array.new
i = 0
j = 0
x = 0
y = 0
str = " "
matrix = Array.new
arrlen = Array.new
#Ввод матрицы
until str == ''
	puts 'Введите строку'
	str = gets.chomp
	if str != ''  
		arr = str.split(',').map {|s| s.to_f}
		matrix = matrix.push(arr)
		arrlen = arrlen.push(arr.length)
	else
		break
	end
end

#Вывод матрицы
puts 'Матрица имеет следующий вид:'
for i in (0..matrix.length) do
	puts "#{matrix[i]}"
	 
end

#Проверка на квадратность и вывод определителя
if arrlen.uniq.count == 1 && arrlen[0] == matrix.length
	matrix  = Matrix[*matrix]
	puts 'Матрица квадратная'
	puts 'Детерминант матрицы равен'
	puts matrix.determinant()
else 
	puts 'Матрица не квадратная'
end

