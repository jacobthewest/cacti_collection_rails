class Cactus < ApplicationRecord
    validates :common_name, presence: true
    validates :genus, presence: true
    validates :species, presence: true
    validates :hardiness, presence: true
end
