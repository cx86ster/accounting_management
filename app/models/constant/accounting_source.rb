# -*- coding: utf-8 -*-
class AccountingSource < ActiveHash::Base
  self.data = [
      {id: 1, symbol: '01', name: '現金'},
      {id: 2, symbol: '02', name: 'ICOCA'},
      {id: 3, symbol: '03', name: 'UFJ'},
      {id: 4, symbol: '04', name: '三住１'},
      {id: 5, symbol: '05', name: '三住２'},
      {id: 6, symbol: '11', name: 'クレジットUFJ'},
      {id: 7, symbol: '12', name: 'クレジット大丸'},
      {id: 8, symbol: '13', name: 'クレジットJR'}
  ]

end