# frozen_string_literal: true

# Copyright (C) 2018 Sandro Jäckel.  All rights reserved.
#
# This file is part of Canuby.
#
# Canuby is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Canuby is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Canuby.  If not, see <http://www.gnu.org/licenses/>.
Gem::Specification.new do |s|
  s.name        = 'canuby'
  s.version     = '0.0.2'
  s.executables << 'canuby'

  s.date        = '2018-03-23'
  s.summary     = 'Canuby'
  s.description = 'Canuby is a modular and very flexible dependency manager that can download,
                   build and stage dependencies from multiple languages and build tools.'
  s.authors     = ['Sandro Jäckel']
  s.email       = 'sandro.jaeckel@gmail.com'
  s.homepage    = 'https://github.com/SuperSandro2000/canuby'
  s.metadata    = {
    'bug_tracker_uri' => 'https://github.com/SuperSandro2000/canuby/issues',
    'changelog_uri' => 'https://github.com/SuperSandro2000/canuby/releases',
    'homepage_uri' => 'https://supersandro2000.github.io/canuby/',
    'source_code_uri' => 'https://github.com/SuperSandro2000/canuby'
  }
  s.license     = 'GPL-3.0'

  s.files       = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(lib)/}) }
  s.test_files  = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(test)/}) }

  s.required_ruby_version = '~> 2.5'
  s.required_rubygems_version = '~> 2.7.3'

  s.add_dependency 'bundler', '~> 1.16'
  s.add_dependency 'rake', '~> 12.3'
  s.add_dependency 'term-ansicolor', '~> 1.6'
  s.add_dependency 'tins', '~> 1.16'
end
