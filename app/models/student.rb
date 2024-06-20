class Student < ApplicationRecord
    before_save { |student| student.name=student.name.capitalize }
    before_save { |student| student.address=student.address.capitalize }
end
