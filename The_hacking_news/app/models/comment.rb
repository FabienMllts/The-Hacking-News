class Comment < ApplicationRecord
	belongs_to :commentable, polymorphic: true #on précise qu'on a fait une association polymorphique
	has_many :comments, as: :commentable #pour ranger l'id et le type d'objet (ici commentaire) comme paramètres du tableau Comment
	validates :body, presence: true, length: { maximum: 140 }
end
