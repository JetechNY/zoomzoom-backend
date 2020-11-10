class ModelSerializer < ActiveModel::Serializer
    attributes :name, :mpg, :year, :msrp, :car_type, :hp, :mpg, :torque, :seats, :description, :favorite, :image, :make
    has_many :reviews
end
