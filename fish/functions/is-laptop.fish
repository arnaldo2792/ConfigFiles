function is-laptop
  switch (cat /sys/class/dmi/id/chassis_type)
    case 8 9 10 11 12 14
      exit 0
    case '*'
      exit 1
    end
end
