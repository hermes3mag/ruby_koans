class Microwave

  alias :old_on1, :on

  def on 
    puts "Warning: Do not insert metal objects!"
    old_on
  end

end

def start()
  m = Microwave.new
  m.on
end

start() 
