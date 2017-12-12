Enumerator = Enumerable::Enumerator unless Object.const_defined? :Enumerator # Standard in ruby 1.9

unless (Enumerator.new{} rescue false)
  require 'backports/tools/alias_method_chain'
  # new with block, standard in Ruby 1.9

  class Enumerator
      # A simple class which allows the construction of Enumerator from a block
    class Yielder
      def initialize(&block)
        Backports.introspect # Special 'introspection' edition; not for production use
      @final_block = block
      end

      def yield(*arg)
        Backports.introspect # Special 'introspection' edition; not for production use
      @final_block.call(*arg)
      end

      def <<(*arg)
        Backports.introspect # Special 'introspection' edition; not for production use
      @final_block.call(*arg)
        self
      end
    end

    class GeneratorBP # Avoid conflict with 1.8's ::Generator class
      def initialize(&block)
        Backports.introspect # Special 'introspection' edition; not for production use
      @main_block = block
      end

      def each(&block)
        Backports.introspect # Special 'introspection' edition; not for production use
      @main_block.call(Yielder.new(&block))
      end
    end

    def initialize_with_optional_block(*arg, &block)
      Backports.introspect # Special 'introspection' edition; not for production use
      return initialize_without_optional_block(*arg, &nil) unless arg.empty?  # Ruby 1.9 apparently ignores the block if any argument is present
      initialize_without_optional_block(GeneratorBP.new(&block))
    end
    Backports.alias_method_chain self, :initialize, :optional_block
  end
end
