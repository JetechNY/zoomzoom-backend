class MakeSerializer < ActiveModel::Serializer
    attributes :name
    has_many :models

end
