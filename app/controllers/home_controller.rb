class HomeController < ApplicationController
  def index
  end

  def generate_barcode
      #@order = Order.find([params:id])
      #nummer = @order.id
      #barcode_value = nummer.to_s
    barcode_value = "099999333"
    full_path = "#{Rails.root}/public/barcodes/barcode_#{barcode_value}.png"
    barcode = Barby::Code39.new(barcode_value)
    File.open(full_path, 'w') { |f| 
       f.write barcode.to_png(:margin => 3, :xdim => 2, :height => 55) 
    }
    redirect_to :back
  end

end
