RBFILES = File.join("**", "*.rb")

def replace(old_str, new_str)
    Dir.glob(RBFILES) do |path|
        next if path == File.basename($0) # avoid replacement in current scrip
        file_text = File.read(path)
        rename = file_text.gsub(old_str, new_str)
        File.open(path, "w") do |file| 
            file.puts rename
        end
    end
end

puts 'Enter string to replace:'
instance_string = gets().chomp()
puts 'Enter new string:'
new_string = gets().chomp()
replace(instance_string, new_string)


