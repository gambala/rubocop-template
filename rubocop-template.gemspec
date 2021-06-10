# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop-template/version'

Gem::Specification.new do |s|
  s.name = 'rubocop-template'
  s.version = RubocopTemplate::VERSION
  s.authors = ['Vitaliy Emeliyantsev']
  s.email = 'gambala.rus@gmail.com'
  s.summary = 'Rubocop template as a gem'
  s.description = <<-EOF
    My .rubocop.yml template as a separated ruby gem.
  EOF
  s.homepage = 'https://github.com/gambala/rubocop-template'
  s.date = Time.now.strftime('%Y-%m-%d')
  s.require_paths = ['lib']
  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.add_dependency 'rubocop', '>= 0.49'
  s.add_development_dependency 'bundler', '~> 1.15'
  s.add_development_dependency 'rake', '~> 10.0'
end
