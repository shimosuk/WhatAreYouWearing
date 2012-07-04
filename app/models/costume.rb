class Costume < ActiveRecord::Base
  attr_accessible :other, :color, :kind

  validates :kind, presence: true, length: {minimum: 1}
  validates :color, presence: true, length: {minimum: 1}, unless: :other?
  validates :other, presence: true, length: {minimum: 1}, if: :other?

  scope :top, where(kind: 'top')
  scope :bottom, where(kind: 'bottom')
  scope :boots, where(kind: 'boots')
  scope :others, where(kind: 'others')

  def other?
    kind == 'others'
  end
end
