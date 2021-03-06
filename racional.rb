# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fracion
	attr_reader :a, :b
	def initialize(a,b)
		@a, @b = a.to_i, b.to_i
	end

	def to_s
		"#{@a} / #{@b}"
	end

	def +(other)
		num = @a*other.b+@b*other.a
		den = @b*other.b
		Fracion.new(num/gcd(num,den),den/gcd(num,den))
	end

	def -(other)
		num = @a*other.b-@b*other.a
		den = @b*other.b
		Fracion.new(num/gcd(num,den),den/gcd(num,den))
	end

	def *(other)
		num = @a*other.a
		den = @b*other.b
		Fracion.new(num/gcd(num,den),den/gcd(num,den))
	end

	def /(other)
		num = @a*other.b
		den = @b*other.a
		Fracion.new(num/gcd(num,den),den/gcd(num,den))
	end
end

str = ARGV[0]
expr = /(\d+)(\/)(\d+)(\+|\-|\*|\/)(\d+)(\/)(\d+)/
op = expr.match(str)
=begin
7.times do |i|
	puts "#{i}: #{op.captures[i]}"
end
=end

f1 = Fracion.new(op.captures[0],op.captures[2])
f2 = Fracion.new(op.captures[4],op.captures[6])

if(op.captures[3] == '+')
	puts "===== Suma ====="
	f3 = f1 + f2
	puts f3
elsif(op.captures[3] == '-')
	puts "===== Resta ====="
	f3 = f1 - f2
	puts f3
elsif(op.captures[3] == '*')
	puts "===== Producto ====="
	f3 = f1 * f2
	puts f3
elsif(op.captures[3] == '/')
	puts "===== Cociente ====="
	f3 = f1 / f2
	puts f3
end
