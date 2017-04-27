class Employee < ApplicationRecord
	belongs_to :city
	has_many :subordinates, class_name: "Employee",
                          foreign_key: "manager_id"
 
  belongs_to :manager, class_name: "Employee", optional: :true
  validates :name , presence:true , uniqueness:true
  validates :willingtorelocate , absence:true , on: :create
  has_attached_file :photo , :styles => { :small => "150x150>"}
  validates_attachment_presence :photo
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png' ,'image/gif']
  
end
