-- utilize config files from love docs. Will call first before anything loads so it can get any config changes you want to make. takes table (t) as an argument and can customize game this way

function love.conf(t)
  -- gives height of the game window/love screen
  t.window.width = 900
  t.window.height = 360
end