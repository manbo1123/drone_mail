class Speed < ActiveHash::Base
  self.data = [
    {id: 1, name: '〜50km/hh'},
    {id: 2, name: '50km/h〜100km/h'},
    {id: 3, name: '100km/h～'},
  ]
end