module Seeds::Student
  extend ActiveSupport::Concern

  included do
  	def self.seed
  		puts '=== Student & school ==='
		  school_1 = School.create(name: 'DH Cong nghe Sai Gon',address: '184 Cao Lo, P.4, Q.8, TP Ho Chi Minh')
		  school_2 = School.create(name: 'DH Ton Duc Thang',address: '184 Nguyen Thi Thap, P.12, Q.7, TP Ho Chi Minh')
		  school_3 = School.create(name: 'DH Nguyen Tat Thanh',address: '220 Nguyen Tat Thanh, P.3, Q.4, TP Ho Chi Minh')

			student_1 = Student.create(name: 'Student 1', dob: '18/02/1992' )
			SchoolsUser.create(user_id: student_1.id, school_id: school_1.id)
			SchoolsUser.create(user_id: student_1.id, school_id: school_2.id)
			SchoolsUser.create(user_id: student_1.id, school_id: school_3.id)

			student_2 = Student.create(name: 'Student 2', dob: '12/12/1990' )
			SchoolsUser.create(user_id: student_2.id, school_id: school_2.id)

			student_3 = Student.create(name: 'Student 3', dob: '12/12/1990' )
			SchoolsUser.create(user_id: student_3.id, school_id: school_3.id)
  		puts '=== End ==='
		end
	end
end