class Plant < ActiveRecord::Base
    has_many :care_tasks, dependent: :destroy
  
    validates :name, presence: true
    validates :species, presence: true, uniqueness: true
    validates :image_url, presence: true
  
    after_destroy :reorder_plant_ids
  
    private
  
    def reorder_plant_ids
        if ActiveRecord::Base.connection.adapter_name.downcase.include?("sqlite")
          Plant.connection.execute('DELETE FROM sqlite_sequence WHERE name="plants"')
        else
          Plant.connection.execute('ALTER TABLE plants AUTO_INCREMENT = 1')
        end
    end
      
end
  