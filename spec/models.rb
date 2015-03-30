class Post < ActiveRecord::Base
  include HasScrubbedAttribute

  has_scrubbed_attribute :content
end
