# frozen_string_literal: true
if Module.private_method_defined? :include
  class Module
    public :include
  end
end
