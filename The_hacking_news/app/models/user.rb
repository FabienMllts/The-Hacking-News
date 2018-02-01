class User < ApplicationRecord
	has_many :links #le user peut avoir plusieurs links
    has_many :comments #le user peut avoir plusieurs commentaires
	validates :name, presence: true, length: { maximum: 50 } #son username ne peut pas être vide et doit faire moins de 50 char
end
