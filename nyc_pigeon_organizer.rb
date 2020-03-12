def nyc_pigeon_organizer(data)
  hash = {}
  
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        if !hash[name]
          hash[name] = {}
        end
        
        if !hash[name][key]
          hash[name][key] = []
        end
        
        hash[name][key].push(new_value)
        
      end
    end
  end
  
  return hash
end
