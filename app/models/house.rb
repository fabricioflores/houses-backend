class House < ApplicationRecord
    scope :within, -> (params) {
        where(%{
         ST_Distance(address_lonlat, 'POINT(%f %f)') < %d
        } % [params[:lng], params[:lat], params[:distance]]) # approx
      }
end
