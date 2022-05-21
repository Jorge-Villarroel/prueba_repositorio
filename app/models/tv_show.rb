class TvShow < ApplicationRecord
    # before_save :capitalize_name

    validates :name, presence: true
    validates :name, length: { minimum: 5 }
    validates :name, uniqueness: true

    private
    def capitalize_name
        splited_names = self.name.split # ~> ["game", "of", "thrones"]
        capitalized_words = splited_names.map { |splited_name| splited_name.capitalize } # ~> ["Game", "Of", "Thrones"]
        self.name = capitalized_words.join(' ') # ~> "Game Of Thrones"
    end
end
