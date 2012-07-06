class Costume < ActiveRecord::Base
  attr_accessible :other, :color, :kind

  validates :kind, presence: true, length: {minimum: 1}, if: :clothers?
  validates :color, presence: true, length: {minimum: 1}, unless: :other?
  validates :other, presence: true, length: {minimum: 1}, unless: :clothers?
  before_save :others, if: :kind_and_color_is_not_chosen

  scope :top, where(kind: 'top')
  scope :bottom, where(kind: 'bottom')
  scope :boots, where(kind: 'boots')
  scope :others, where(kind: 'others')

  def other?
    kind == 'others' || kind == ''
  end

  private

  def others
    self.kind = 'others'
  end

  def kind_and_color_is_not_chosen
    kind == '' && color == ''
  end

  def clothers?
    color != ''
  end
end
