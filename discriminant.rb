class String
	def numeric?
		Float(self) != nil rescue false
	end
end
puts 'Квадратное уравнение имеет вид: Ax^2 + Bx +C = 0'
puts 'Введите коэффициент А'
a = gets
if a.numeric?
	a = a.to_f
	if a==0
		puts 'Уравнение не квадратное'
	else
		puts 'Введите коэффициент B'
		b = gets
		puts 'Введите коэффициент C'
		c = gets
		if b.numeric? && c.numeric?
			b = b.to_f
			c = c.to_f
			d = (b**2)-(4*a*c)
			if d==0
				puts 'D= '+d.to_s
				puts 'x= '+(-b/(2*a)).to_s
			else
				if d>0
					puts 'D= '+d.to_s
					puts 'x1= '+((-b-Math.sqrt(d))/(2*a)).to_s
					puts 'x2= '+((-b+Math.sqrt(d))/(2*a)).to_s
				else
					puts 'D= '+d.to_s
					puts 'Корней нет' 
				end
			end
		else
			puts 'Введен нечисленный коэффициент'
		end
	end
else 
	puts 'Введен нечисленный коэффициент'
end