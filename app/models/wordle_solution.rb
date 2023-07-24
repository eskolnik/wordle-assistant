class WordleSolution < ApplicationRecord
    validates :word, presence: true
    validates :word, length: {is: 5}
    validates :word, uniqueness: true
end
