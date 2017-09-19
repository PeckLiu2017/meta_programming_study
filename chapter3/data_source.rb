class DS
  # attr_accessor :workstation_id

  def initialize
    "...connect..."
  end

  def get_cpu_info(workstation_id)
    cpu_info = if workstation_id == 1
      "intel core i7"
    else workstation_id == 2
      "apple AM 11"
    end
  end

  def get_cpu_price(workstation_id)
    cpu_price = if workstation_id == 1
      2500
    else workstation_id == 2
      2000
    end
  end

  def get_mouse_info(workstation_id)
    mouse_info = if workstation_id == 1
      "雷蛇"
    else workstation_id == 2
      "牧马人"
    end
  end

  def get_mouse_price(workstation_id)
    mouse_price = if workstation_id == 1
      300
    else workstation_id == 2
      500
    end
  end

  def get_keyboard_info(workstation_id)
    keyboard_info = if workstation_id == 1
      "机械键盘"
    else workstation_id == 2
      "普通键盘"
    end
  end

  def get_keyboard_price(workstation_id)
    keyboard_price = if workstation_id == 1
      500
    else workstation_id == 2
      90
    end
  end
end


# ds = DS.new
# puts ds.get_cpu_info(1)
# puts ds.get_cpu_price(1)
# puts ds.get_mouse_info(1)
# puts ds.get_mouse_price(1)
# puts ds.get_keyboard_info(1)
# puts ds.get_keyboard_price(1)
