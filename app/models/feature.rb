class Feature < ActiveHash::Base
  self.data = [
    {id: 1, name: '冷蔵対応'},
    {id: 2, name: '冷凍対応'},
    {id: 3, name: '保温対応'},
    {id: 4, name: '遮光対応}
  ]
end