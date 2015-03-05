class ReviewSerializer < ActiveModel::Serializer
	attributes :comment, :stars, :reviewer
end