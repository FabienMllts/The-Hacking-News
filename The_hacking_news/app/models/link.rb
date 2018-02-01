class Link < ApplicationRecord
  belongs_to :user #un post appartient au user
  has_many :comments, as: :commentable #pour ranger l'id et le type d'objet (ici post) comme paramètres du tableau Comment
  VALID_URL_REGEX = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/
  validates :url, presence: true, length: { maximum: 2048 }, format: { with: VALID_URL_REGEX }, uniqueness: { case_sensitive: false }
end
