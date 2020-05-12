class Project < ApplicationRecord
    include Rails.application.routes.url_helpers

    belongs_to :user
    has_one_attached :pictures
    has_many_attached :photos


  
    def my_url
      rails_blob_path(self.photos, disposition: "attachment")
    end


    def allPictures
        url_for(self.pictures)
    end

    def allPhotos
        if self.photos
            allPhotos = self.photos
            photos.map { |photo|
            url_for(photo)
        }
        else 
            photos = ["#"]
        end
    end

end