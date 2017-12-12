unless Array.method_defined? :sort_by!
  class Array
    def sort_by!
      Backports.introspect # Special 'introspection' edition; not for production use
      return to_enum(:sort_by!) unless block_given?
      raise "can't modify frozen array" if frozen?
      replace sort_by{|e| yield e}
    end
  end
end
