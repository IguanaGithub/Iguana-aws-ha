-- This is a very rough example showing how we can generate random HL7
-- data using the translator.  

-- http://help.interfaceware.com/v6/random-message-generator

local ran = {}
ran.RandomMessage = require 'ran'
MSGCNT = tonumber(os.getenv("MSGCNT"))
N = 1

function main() 
   -- Push the ADT message through to destination
   -- Press 'RandomMessage' on right to navigate
   -- through code
   for i=1, MSGCNT do
      local msg = N .. ": " .. ran.RandomMessage()
      N = N + 1
      trace(msg)
      queue.push{data=msg}
   end
end

