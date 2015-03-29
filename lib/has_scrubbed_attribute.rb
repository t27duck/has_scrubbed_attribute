require "has_scrubbed_attribute/version"
require 'loofah/helpers'

module HasScrubbedAttribute
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def has_scrubbed_attribute(attr)
      before_validation do
        self.send("#{attr}=", Loofah.scrub_fragment(self.send(attr), :whitewash).to_text
      end
    end
  end
end
