#Clase para crear los objetos racionales

class Fraccion

	attr_reader :num, :den	#para no tener q crear los getters y setters de las vbles
	
	def initialize(num, den)	#metodo para inicializar los objetos
		@num, @den = num, den
	end

	def to_s	#metodo para convertir los objetos a cadena
		"(#{@num}/#{@den})"	#num/den
	end

	#Maximo Comun Divisor
	def gcd(a, b)
		a, b = a.abs, b.abs
		while b > 0
			a, b = b, a % b
		end
	a
	end

	#Minimo Comun Multiplo
	def mcm(a, b)
		aux = gcd(a, b)
		(a/aux)*b
	end

	#Operaciones aritmeticas
	def +(fraccion)
		aux = mcm(@den, fraccion.den)	#mcm de los denominadores
		Fraccion.new((@num * (aux/@den)) + (fraccion.num * (aux/fraccion.den)), aux)
	end

	def -(fraccion)	
		aux = mcm(@den, fraccion.den)
		Fraccion.new(((@num * (aux/@den)) - (fraccion.num * (aux/fraccion.den)), aux)
	end

	def *(fraccion)		#metodo para multiplicar fracciones
		Fraccion.new(@num * fraccion.num, @den * fraccion.den)
	end

	def /(fraccion)
		Fraccion.new(@num * fraccion.den, @den * fraccion.num)
	end
	

end
