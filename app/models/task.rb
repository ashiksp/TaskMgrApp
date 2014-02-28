class Task < ActiveRecord::Base

	has_many :depends

	

	validates :taskName, presence:true, length: { minimum: 5 }
	validates :projectName, presence:true, length: { minimum: 5 }
	validates :assignedto, presence:true, length: { minimum: 5 }
	validates :hours, presence:true, numericality: true

end
