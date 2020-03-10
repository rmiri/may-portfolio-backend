class Style < ApplicationRecord
    # mount_uploader :logo, LogoUploader
    belongs_to :user
end
