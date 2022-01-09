function is-laptop
  switch (cat /sys/class/dmi/id/chassis_type)
    case 8 9 10 11 12 14
      return 0
    case '*'
      return 1
    end
end
