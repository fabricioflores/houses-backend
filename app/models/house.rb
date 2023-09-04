class House < ApplicationRecord
    scope :within, -> (latitude, longitude, distance) {
        where(%{
         ST_Distance(address_lonlat, 'POINT(%f %f)') < %d
        } % [longitude, latitude, distance]) # approx
      }
end
