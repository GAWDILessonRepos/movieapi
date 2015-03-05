class ReviewSerializer < ActiveModel::Serializer
	attributes :comment, :stars, :reviewer, :created_at

	def created_at
		object.created_at.strftime('%m-%d-%Y')
	end
end