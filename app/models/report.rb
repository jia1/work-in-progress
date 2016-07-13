class Report < ActiveRecord::Base
	has_many :comments, dependent: :destroy

	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv << column_names
	    all.each do |report|
	      csv << report.attributes.values_at(*column_names)
	    end
	  end
	end
end
