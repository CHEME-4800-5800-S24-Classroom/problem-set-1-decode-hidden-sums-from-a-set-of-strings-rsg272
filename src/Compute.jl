# ===== PRIVATE METHODS BELOW HERE =================================================================================== #







# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

# ===== PUBLIC METHODS BELOW HERE ==================================================================================== #
"""
    decode_part_1(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}
    The first element should be the overall hidden sum computed by processing all the encoded text in a file. The hidden sum is of the type Int64.
    The second element should be a dictionary of type Dict{Int64, Int64} with the following structure: 
    The key should be the line number (starting from index 1), 
    and the value should be the two-digit integer computed from the first digit and the last digit of the encoded line of text.

"""
function decode_part_1(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
    
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    #decode_1 logic
    for (linenumber,model) in models
        CA = model.characters
        numberarray = filter(isdigit, CA)
        line_sum = numberarray[1]*numberarray[end]
        codes[linenumber] = parse(Int64, line_sum)
        total += parse(Int64, line_sum)

    end
    # return the total -
    return (total, codes);
end

"""
    decode_part_2(models::Dict{Int64, MyPuzzleRecordModel}) -> Tuple{Int64, Dict{Int64, Int64}}

TODO: Add documentation
"""
function decode_part_2(models::Dict{Int64, MyPuzzleRecordModel})::Tuple{Int64, Dict{Int64, Int64}}
     
    # initialize -
    total = 0;
    codes = Dict{Int64, Int64}();
    num_dict = Dict("zero"=> "0", "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9")

    #decode part 2 logic
    for (linenumber,model) in models
        record_copy= model.record

        for (word, num) in num_dict
            if occursin(word, record_copy)
                first_char=word[1] |> string
                last_char= word[end] |> string 
                replace_word= first_char*word*last_char
                record_copy= replace(record_copy, word => replace_word)
                record_copy= replace(record_copy, word => num)
            end
        end

        number_string = filter(isdigit, record_copy)
        line_sum = number_string[1]*number_string[end]
        codes[linenumber] = parse(Int64, line_sum)
        total += parse(Int64, line_sum)

    end

     # return the total -
     return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #