class List < ActiveRecord::Base
    has_many :countries_lists
    has_many :countries, :through => :countries_lists
    accepts_nested_attributes_for :countries
end