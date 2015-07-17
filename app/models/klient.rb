class Klient < ActiveRecord::Base
  validates :fio, presence: true
  validates :tel, presence: true
end
