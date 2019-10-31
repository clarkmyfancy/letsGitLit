require 'rspec/autorun'
require 'rails_helper'
require 'spec_helper'

FactoryBot.define do
  
  factory :user do
    name "Joe Smith"
    email "joe@tamu.edu"
    password "12345"
    degree "CPSC"
    classyear "junior"
    uin "729574810"
  end
end
