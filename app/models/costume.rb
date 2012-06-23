class Costume < ActiveRecord::Base
  attr_accessible :color, :kind

  scope :top, where(kind: 'top')
  scope :bottom, where(kind: 'bottom')
  scope :boots, where(kind: 'boots')
end
