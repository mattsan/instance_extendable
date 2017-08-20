module InstanceExtendable
  module Attributes
    def extend_reader(attr_name, &block)
      variable_name = "@#{attr_name}"
      instance_variable_set(variable_name, block[self])
      define_singleton_method(attr_name) { instance_variable_get(variable_name) }
    end

    def extend_attr(attr_name, &block)
      variable_name = "@#{attr_name}"
      extend_reader(attr_name, &block)
      define_singleton_method("#{attr_name}=") {|value| instance_variable_set(variable_name, value) }
    end
  end
end
