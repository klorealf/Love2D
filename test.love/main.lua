-- open -n -a love "./test.love" (to run file)
-- you can't run a game without the main.lua in the some directory


-- Main functions on a main.lua file

-- x = 100 (this is a global variable. try to avoid this)

-- <local x = 120> local variable. x is used to replace x value for rectangle in thsi example
local x = 120
local dir = 1


-- runs once and will load function anytime the program is opened. Good time to add any initialization stuff here, loading images, files.
function love.load()
  -- will allow for debugging behind th scenes
  -- print("console")
end

-- will be called every game tick. dt = delta time and gives the amount of time since the last update. good for speed and velocity. common function.
function love.update(dt)
  -- when the love window is moved, the frame rate/dt will pause. add some time to prevent the program from stopping if it slows or is moved
  if dt > 0.040 then return end
  -- conditional statement
  if x < 120 then
    -- will go in opposite direction due to -1
    -- dir = dir * -1
    dir = 1
  elseif x > 400 then
    dir = -1
  end
  -- lua can't do += so it has to be written out. pixels per sec. speed moves independent of frame rate
    x = x + dir * 200 * dt
end

-- this function will call within the run loop to draw to the screen. body of function is the way you print graphics according to the docs
function love.draw()
    love.graphics.setColor(255, 255, 255)
    love.graphics.print("Hello World", 10, 100)
    -- <love.graphics.setColor( red, green, blue, alpha )> alpha is optional. Any line above this that doesn't specify color will automatically be set to this color
    love.graphics.setColor(128, 64, 255)
    -- <love.graphics.rectangle( mode, x, y, width, height )>
    love.graphics.rectangle("fill", x, 100, 100, 50)
end

