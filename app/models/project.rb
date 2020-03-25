class Project < ApplicationRecord
    belongs_to :user
    has_one_attached :pictures


    def allPictures
        self.pictures.map
    end

end