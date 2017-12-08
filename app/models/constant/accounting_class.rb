# -*- coding: utf-8 -*-
class AccountingClass < ActiveHash::Base
  include ActiveHash::Enum
  self.data = [
      {id: 1, symbol: '01', name: '収入'},
      {id: 2, symbol: '02', name: '支出'}
  ]
  enum_accessor :symbol
end