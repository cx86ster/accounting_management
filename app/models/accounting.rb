class Accounting < ActiveRecord::Base
  belongs_to :accounting_group
  belongs_to :accounting_class
  belongs_to :accounting_source

  validates :accounting_date, presence: true
  validates :accounting_money, presence: true
  validates :item_name, presence: true
  validates :accounting_group_id, presence: true
  validates :purchase_place, presence: true
  validates :accounting_source_id, presence: true
  validates :accounting_money, numericality: { only_integer: true }, if: :accounting_money_present?

  def accounting_money_present?
    accounting_money.present?
  end
end
