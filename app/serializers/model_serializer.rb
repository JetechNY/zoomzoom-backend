class ModelSerializer < ActiveModel::Serializer
    attributes :id, :name, :mpg, :year, :msrp, :car_type, :hp, :mpg, :torque, :seats, :description, :favorite, :image, :make_id
    has_many :reviews
end
