class MovieSerializer < ActiveModel::Serializer
	attributes :id, :title, :gross, :release, :rating, :description, :created_at
	has_many :reviews

	def created_at
		object.created_at.strftime('%m-%d-%Y')
	end
end