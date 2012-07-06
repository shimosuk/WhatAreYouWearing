class Costume < ActiveRecord::Base
  attr_accessible :other, :color, :kind

  before_save :others, if: :kind_is_not_chosen

  scope :top, where(kind: 'top')
  scope :bottom, where(kind: 'bottom')
  scope :boots, where(kind: 'boots')
  scope :others, where(kind: 'others')

  def other?
    kind == 'others'
  end

  def others
    self.kind = 'others'
  end

  def kind_is_not_chosen
    kind == ''
  end
end
