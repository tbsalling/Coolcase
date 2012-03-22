class Project < ActiveRecord::Base
  has_many :actors
  has_many :usecases
end
