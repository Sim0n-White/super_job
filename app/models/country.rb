class Country < ApplicationRecord
  has_many :cities, foreign_key: "countryid"
end
