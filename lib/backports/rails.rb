# frozen_string_literal: true
%w(array enumerable hash kernel module string).each do |lib|
  require "backports/rails/#{lib}"
end
