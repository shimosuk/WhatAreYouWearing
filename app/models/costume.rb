class Costume < ActiveRecord::Base
  attr_accessible :color, :kind

  validates :color, presence: true, length: {minimum: 1}
  validates :kind, presence: true, length: {minimum: 1}

  scope :top, where(kind: 'top')
  scope :bottom, where(kind: 'bottom')
  scope :boots, where(kind: 'boots')
  scope :others, where(kind: 'others')
end
