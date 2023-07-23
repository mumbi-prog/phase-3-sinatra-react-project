class CareTask < ActiveRecord::Base
    
    belongs_to :plant
  
    validates :name, presence: true
    validates :description, presence: true
    validates :due_date, presence: true
end
  