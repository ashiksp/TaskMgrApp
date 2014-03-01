class Task < ActiveRecord::Base

	has_many :depends

	validates :taskName, presence:true, length: { minimum: 5 }
	validates :projectName, presence:true, length: { minimum: 5 }
	validates :assignedto, presence:true, length: { minimum: 5 }
	validates :hours, presence:true, numericality: true
	validates :priority, presence:true
	

	def self.to_csv(options = {})
  		CSV.generate(options) do |csv|
   		 csv << column_names
   		 	all.each do |task|
     	 	csv << task.attributes.values_at(*column_names)
    		end
  		end
	end

end
