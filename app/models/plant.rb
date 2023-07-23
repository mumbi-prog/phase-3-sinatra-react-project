class Plant < ActiveRecord::Base
    
    has_many :care_tasks, dependent: :destroy
  
    validates :name, presence: true
    validates :species, presence: true
    validates :image_url, presence: true
end
  