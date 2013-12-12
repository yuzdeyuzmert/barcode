# Load the rails application
require File.expand_path('../application', __FILE__)



# Initialize the rails application
Barcode::Application.initialize!

require 'barby'
require 'barby/barcode/code_39'
require 'barby/outputter/png_outputter'