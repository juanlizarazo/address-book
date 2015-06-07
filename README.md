# Address book 

This address book is a simple but functional web-app that features: 

- Ruby on rails 4
- NoSQL database mongodb (2.6.10) with denormalized data model using embedded documents for faster reads. 
- Object relational mapper (ORM) mongoid
- Full multi-language support (English and spanish) with locales I18n (see: config/locales)
- 1 custom validator
- 1 controller (it is a simple app) with strong parameters
- Optimization for mobile devices (A bit unstable on some devices)
- This front end toolbelt: Bootstrap 3, sass and compass, font-awesome, coffeescript, google fonts, rails_layout gem.
- Turbolinks for faster loads
- secrets.yml file (not in the repo, use sample.yml)
- Continuous integration and builds (travis CI)
- Example tests using MiniTest used for the CI builds.
- Lint checks (using Rubocop) to promote ruby style best practices
- Code climate GPA Reports to promote better coding practices
- Code test coverage reports with Codeclimate

## Code status 
[![Build Status](https://travis-ci.org/juanlizarazo/address-book.svg)](https://travis-ci.org/juanlizarazo/address-book) [![Code Climate](https://codeclimate.com/github/juanlizarazo/address-book/badges/gpa.svg)](https://codeclimate.com/github/juanlizarazo/address-book) [![Test Coverage](https://codeclimate.com/github/juanlizarazo/address-book/badges/coverage.svg)](https://codeclimate.com/github/juanlizarazo/address-book/coverage) [![Dependency Status](https://gemnasium.com/juanlizarazo/address-book.svg)](https://gemnasium.com/juanlizarazo/address-book)

## license

The MIT License (MIT)

Copyright (c) 2015 - Juan Lizarazo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
