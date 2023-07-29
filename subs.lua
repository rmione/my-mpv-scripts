require 'mp'


function copy()
    print("Keybind Invoked: Copy")
    local sub_text = mp.get_property("sub-text")

    -- Echoing it works fine, and piping the output stifles the echo
    local command =  ('echo "' .. sub_text ..'" | xclip -selection clipboard') 
    
    os.execute(command)
end

mp.add_key_binding("Ctrl+p", "Copy", copy)
