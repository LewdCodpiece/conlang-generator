load "./utils.rb"
require "matrix"

class Phoneme
  def initialize()
  end
end

class Voyelle
  def initialize(arrondie = Random.rand, antériorité = Random.rand, nasale = Random.rand, ouverture = Random.rand)
    # 0.0 étirée, 1.0 arrondie
    @arrondie = arrondie 

    # 0.0 postérieure .5 centrale, 1.0 antérieure
    @antériorité = antériorité
    
    # True nasale, False, orale
    @nasale = nasale.round(1)

    # 0.0 fermée, 1/3 semi fermée, 2/3 semi ouverte, 1.0 ouverte
    @ouverture = ouverture

    @vector_repr = Vector[@arrondie, @antériorité, @nasale, @ouverture]

    @phoneme = ""

    @phone = ""
  end

  def to_s
    return @vector_repr
  end
end

class Consonne
end

class Syllabe

end

# if __FILE__ == $0
# est l'équivalent de if __name__ == "__main__"

if __FILE__ == $0
  test_v = Voyelle.new
  puts test_v.vector_repr
end