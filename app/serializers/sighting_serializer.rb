class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location

  # connecting the serializer to :bird and :location - to include attributes from those objects
  
  # this results in our rendered JSON including an "attributes" object with "created_at", "bird", and "location"

  # {
  #   "id": "2",
  #   "type": "sighting",
  #   "attributes": {
  #     "created_at": "2019-05-14T16:39:37.011Z",
  #     "bird": {
  #       "id": 2,
  #       "name": "Grackle",
  #       "species": "Quiscalus Quiscula",
  #       "created_at": "2019-05-14T16:39:36.917Z",
  #       "updated_at": "2019-05-14T16:39:36.917Z"
  #     },
  #     "location": {
  #       "id": 2,
  #       "latitude": 30.26715,
  #       "longitude": -97.74306,
  #       "created_at": "2019-05-14T16:39:36.942Z",
  #       "updated_at": "2019-05-14T16:39:36.942Z"
  #     }
  #   }
  # }
end
