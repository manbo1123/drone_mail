class Weight < ActiveHash::Base
  self.data = [
    {id: 1, name: '〜200g'},
    {id: 2, name: '200〜700g'},
    {id: 3, name: '700g～'},
    {id: 4, name: '3〜'}
  ]
end