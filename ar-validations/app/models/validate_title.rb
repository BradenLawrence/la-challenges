# class ValidateTitle < ActiveRecord::EachValidator
#   def validate_each(record)
#     unless record.title.downcase.include? 'brussels sprouts'
#       record.errors.add :title, "Title must include 'brussels sprouts'."
#     end
#   end
# end
