
module Formula
  def perimetro(lado1, lado2)
    2*(lado1+lado2)
  end

  def area(lado1, lado2)
    lado1*lado2
  end
end

class Rectangulo
  include Formula
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end
  def lados
    print "largo = #{@largo} ancho = #{@ancho}"
  end

end

class Cuadrado
  include Formula
  def initialize(lado)
    @lado = lado
  end
  def lados
    print "lado = #{@lado}"
  end
end


class Rectangulo
  include Formula
end

class Cuadrado
  include Formula
end


puts Rectangulo.new(4, 8).area(4, 8)
puts Rectangulo.new(4, 8).perimetro(4, 8)
puts Cuadrado.new(4).area(4, 4)
puts Cuadrado.new(4).perimetro(4, 4)
