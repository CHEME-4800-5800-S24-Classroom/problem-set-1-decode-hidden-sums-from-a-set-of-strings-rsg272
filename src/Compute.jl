# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
# TODO: Put private helper methods here. Don't forget to use the _ naming convention, and to add basic documentation.
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
     
    # TODO: Add the logic for part 2 here
    # ...
     
     # return the total -
     return (total, codes);
end
# ===== PUBLIC METHODS ABOVE HERE ==================================================================================== #