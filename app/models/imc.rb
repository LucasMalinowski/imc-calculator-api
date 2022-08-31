class Imc < ApplicationRecord
  validates :height, :weight, presence: true
  validate :validate_imc

  def validate_imc
    self.final_imc = (weight.to_d / (height.to_d * height.to_d)).round(2)
    errors.add(:base, "IMC inválido") if (final_imc) <= 0
  end
end
