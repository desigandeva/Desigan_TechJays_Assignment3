class Teacher < ApplicationRecord
    before_save { |teacher| teacher.name=teacher.name.capitalize }
    before_save { |teacher| teacher.address=teacher.address.capitalize }
end
