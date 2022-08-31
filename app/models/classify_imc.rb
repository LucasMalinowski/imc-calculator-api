class ClassifyImc
  def self.call(imc)
    classification = classify(imc)
    {
      imc: imc,
      classification: classification[:classification],
      obesity: classification[:obesity]
    }
  end

  private

  def self.classify(imc)
    case imc
    when 0..18.5
      { classification: 'Magreza', obesity: "0" }
    when 18.5..24.9
      { classification: 'Normal', obesity: "0" }
    when 25..29.9
      { classification: 'Sobrepeso', obesity: "I" }
    when 30..39.9
      { classification: 'Obesidade', obesity: "0" }
    else
      { classification: 'Obesidade Grave', obesity: "0" }
    end
  end
end
