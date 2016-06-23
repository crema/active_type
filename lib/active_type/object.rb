require 'active_type/no_table'
require 'active_type/virtual_attributes'
require 'active_type/nested_attributes'

module ActiveType

  class Object < ActiveRecord::Base

    include NoTable
    include VirtualAttributes
    include NestedAttributes

    def write_attribute(attr, value)
      write_virtual_attribute(attr.to_s, value)
    end

  end

end
