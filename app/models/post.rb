class Post < ApplicationRecord
  validates :name, :presence => true
 validates :title, :presence => true,
                   :length => { :minimum => 5, maximum: 50 }
validates :content, :presence => true,
          :length => { :minimum => 10, maximum: 2000 }

has_many :comments, :dependent => :destroy
has_many :tags




accepts_nested_attributes_for :tags, :allow_destroy => :true,
:reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
