module Seeds::OfficeWorker
  extend ActiveSupport::Concern

  included do
    def self.seed
    	puts '== Office Worker =='
			(1..5).each do |i|
				OfficeWorker.create(
					name:       	"Office worker #{i}",
					dob:    			"18/02/198#{i}",
					year_of_exp:  "#{i}",
			  )
			end
			puts '== End =='
    end
  end
end