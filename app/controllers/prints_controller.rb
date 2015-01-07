class PrintsController < ApplicationController
  def index
    for i in 1..10000 do
       sleep(10000)
      puts "Hello, the number is #{i}"
    end
  end
end
