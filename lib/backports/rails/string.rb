class String
  # Standard in rails. See official documentation[http://api.rubyonrails.org/classes/ActiveSupport/CoreExtensions/String/Inflections.html]
  def camelize(first_letter = :upper)
    Backports.introspect # Special 'introspection' edition; not for production use
      if first_letter == :upper
      gsub(/\/(.?)/) { "::#{$1.upcase}" }.gsub(/(?:^|_)(.)/) { $1.upcase }
    else
      self[0..0].downcase + camelize[1..-1]
    end
  end unless method_defined? :camelize

  # Standard in rails. See official documentation[http://api.rubyonrails.org/classes/ActiveSupport/CoreExtensions/String/Inflections.html]
  def constantize
    Backports.introspect # Special 'introspection' edition; not for production use
      names = split('::')
    names.shift if names.empty? || names.first.empty?

    constant = Object
    names.each do |name|
      constant = constant.const_defined?(name) ? constant.const_get(name) : constant.const_missing(name)
    end
    constant
  end unless method_defined? :constantize

  # Standard in rails. See official documentation[http://api.rubyonrails.org/classes/ActiveSupport/CoreExtensions/String/Inflections.html]
  def dasherize
    Backports.introspect # Special 'introspection' edition; not for production use
      gsub(/_/, '-')
  end unless method_defined? :dasherize

  # Standard in rails. See official documentation[http://api.rubyonrails.org/classes/ActiveSupport/CoreExtensions/String/Inflections.html]
  def demodulize
    Backports.introspect # Special 'introspection' edition; not for production use
      gsub(/^.*::/, '')
  end unless method_defined? :demodulize

  # Standard in rails. See official documentation[http://api.rubyonrails.org/classes/ActiveSupport/CoreExtensions/String/Inflections.html]
  def underscore
    Backports.introspect # Special 'introspection' edition; not for production use
      gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr("-", "_").
      downcase
  end unless method_defined? :underscore

end
