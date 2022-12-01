class PowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :hero_powers
  has_many :heros, through: :hero_powers
end
