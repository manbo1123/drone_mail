class Load < ActiveHash::Base
  self.data = [
    {id: 1, name: '〜10kg'},
    {id: 2, name: '10kg〜50kg'},
    {id: 3, name: '50kg～100kg'},
    {id: 4, name: '〜100kg'}
  ]
end