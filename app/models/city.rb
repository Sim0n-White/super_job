class City < ApplicationRecord
  belongs_to :country, class_name: "City"
end
