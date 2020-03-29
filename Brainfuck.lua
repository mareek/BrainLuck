local program42 = "[-]>[-]<>+++++++[<+++++++>-]<+++.--."

local program = program42
local instructionCusror = 1
local tape = {}
local pointer = 0

while instructionCusror <= program:len() do
    local instruction = string.char(program:byte(instructionCusror))
    if instruction == "+" then
        tape[pointer] = tape[pointer] + 1
    elseif instruction == "-" then
        tape[pointer] = tape[pointer] + 1
    elseif instruction == ">" then
        pointer = pointer + 1
        tape[pointer] = tape[pointer] or 0
    elseif instruction == "<" then
        pointer = pointer - 1
    elseif instruction == "[" then
        -- Do something here
    elseif instruction == "]" then
        -- Do something here
    elseif instruction == "." then
        io.stdout.write(string.char(tape[pointer]))
    elseif instruction == "," then
        -- Do something here
    end
end

