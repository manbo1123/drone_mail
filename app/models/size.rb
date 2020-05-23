class Size < ActiveHash::Base
  self.data = [
    {id: 1, name: '小型（参：〜350mm）'},
    {id: 2, name: '中型（参：350mm～700mm）'},
    {id: 3, name: '大型（参：700mm～1400mm）'}
  ]
end