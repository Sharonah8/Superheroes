class HeroPowerSerializer < ActiveModel::Serializer
  #attributes :id, :strength, :power_id, :hero_id

  belongs_to :hero 
  belongs_to :power
end
