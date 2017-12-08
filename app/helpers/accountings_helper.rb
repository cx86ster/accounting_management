module AccountingsHelper
  def new_accounting_title(accounting_class)
    if accounting_class == '1'
      '収入情報登録'
    elsif accounting_class == '2'
      '支出情報登録'
    end
  end

  def edit_accounting_title(accounting_class)
    if accounting_class == '1'
      '収入情報変更'
    elsif accounting_class == '2'
      '支出情報変更'
    end
  end
end
