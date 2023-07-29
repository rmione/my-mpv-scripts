require 'mp'


-- this is essentially just a wrapper on the Python file, but this also takes a screencap so there is that, too.
function zou_handler()
    print("Keybind Invoked: Zou")

    -- run zou.py on the latest screenshot.
    local sc = mp.commandv("screenshot", "window")
    print(sc)

    local command =  ('ls ~/Pictures/mpv/ -tp | grep -v /$ | head -1') 
    local local_path = os.execute(command)
    print(local_path)

    -- all the complicated logic will happen in zou,py
    local command =  ('python3  ~/.config/mpv/scripts/zou.py') 
    local result = os.execute(command)

    os.remove(local_path)
    mp.osd_message("Script has ran to completion!")

end


function zou_handler_tategaki()
    print("Keybind Invoked: Zou (Tategaki)")

    -- run zou.py on the latest screenshot.
    local sc = mp.commandv("screenshot", "window")
    print(sc)

    local command =  ('ls ~/Pictures/mpv/ -tp | grep -v /$ | head -1') 
    local local_path = os.execute(command)
    print(local_path)

    -- all the complicated logic will happen in zou,py
    local command =  ('python3  ~/.config/mpv/scripts/zou.py --tategaki') 
    local result = os.execute(command)

    os.remove(local_path)
    mp.osd_message("Script has ran to completion!")

end


mp.add_key_binding("Ctrl+y", "zouhandler", zou_handler) -- yokogaki
mp.add_key_binding("Ctrl+t", "zouhandler-tategaki", zou_handler_tategaki)                            -- tategaki
