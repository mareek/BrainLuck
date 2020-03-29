local program = "[-]>[-]<>+++++++[<+++++++>-]<+++.--."

local function fillJumpTable(program)
    local result = {}
    local stack = {}
    local stackPointer = 0
    for i = 1, #program do
        local instruction = program:sub(i, i)
        if instruction == "[" then
            stackPointer = stackPointer + 1
            stack[stackPointer] = i
        elseif instruction == "]" then
            local destination = stack[stackPointer]
            stack[stackPointer] = nil
            stackPointer = stackPointer - 1
            result[i] = destination
            result[destination] = i
        end
    end

    return result
end

local jumpTable = fillJumpTable(program)

local instructionCusror = 1
local tape = {}
local pointer = 1
tape[1] = 0

while instructionCusror <= #program do
    local instruction = program:sub(instructionCusror, instructionCusror)
    if instruction == "+" then
        tape[pointer] = tape[pointer] + 1
    elseif instruction == "-" then
        tape[pointer] = tape[pointer] - 1
    elseif instruction == ">" then
        pointer = pointer + 1
        tape[pointer] = tape[pointer] or 0
    elseif instruction == "<" then
        pointer = pointer - 1
    elseif instruction == "[" and tape[pointer] == 0 then
        instructionCusror = jumpTable[instructionCusror]
    elseif instruction == "]" then
        instructionCusror = jumpTable[instructionCusror] - 1
    elseif instruction == "." then
        io.stdout:write(string.char(tape[pointer]))
    elseif instruction == "," then
        -- Do something here
    end

    instructionCusror = instructionCusror + 1
end

