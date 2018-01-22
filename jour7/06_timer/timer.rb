class Timer
  
   def seconds
      @timer = 0
   end

   def seconds=(seconds)
      @timer = seconds
   end

   def time_string
      seconds = @timer
      minutes = 0
      heures = 0
      while seconds >= 3600
         seconds -= 3600
         heures += 1
      end
      while seconds >= 60
         seconds -= 60
         minutes += 1
      end
      s = seconds.to_s
      m = minutes.to_s
      h = heures.to_s
      if s.length == 1
         s = "0" + s
      end
      if m.length == 1
         m = "0" + m
      end
      if h.length == 1
         h = "0" + h
      end
      return (h + ":" + m + ":" + s)
   end

end
