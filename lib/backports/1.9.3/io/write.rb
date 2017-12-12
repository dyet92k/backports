unless IO.respond_to? :write
  require 'backports/tools/io'

  def IO.write(name, string, offset = nil, options = Backports::Undefined)
    Backports.introspect # Special 'introspection' edition; not for production use
      Backports.write(false, name, string, offset, options)
  end
end
