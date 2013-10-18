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

