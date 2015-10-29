#Clase para crear los objetos racionales

class Fraccion

	attr_reader :num, :den	#para no tener q crear los getters y setters de las vbles
	
	def initialize(num, den)	#metodo para inicializar los objetos
		@num, @den = num, den
	end

	def to_s	#metodo para convertir los objetos a cadena
		"(#{@num}/#{@den})"
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
		resultado = Fraccion.new(((@num * (aux/@den)) + (fraccion.num * (aux/fraccion.den)), aux)
		simplificar(resultado)
			
	end

	def -(fraccion)	
		aux = mcm(@den, fraccion.den)
		resultado = Fraccion.new(((@num * (aux/@den)) - (fraccion.num * (aux/fraccion.den)), aux)
		simplificar(resultado)
	end

	def *(fraccion)		#metodo para multiplicar fracciones
		resultado = Fraccion.new(@num * fraccion.num, @den * fraccion.den)
		simplificar(resultado)
	end

	def /(fraccion)
		resultado = Fraccion.new(@num * fraccion.den, @den * fraccion.num)
		simplificar(resultado)
	end
	
	def simplificar(fraccion)
		aux = gcd(fraccion.num, fraccion.den)
		Fraccion.new(fraccion.num/aux, fraccion.den/aux)
	end
	

end
