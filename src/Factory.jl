
# ===== PRIVATE METHODS BELOW HERE =================================================================================== #
function _build(record::String)::MyPuzzleRecordModel
    model = MyPuzzleRecordModel()
    model.len = length(record)
    model.characters = collect(record)
    model.record = record
    return model
end 
# ===== PRIVATE METHODS ABOVE HERE =================================================================================== #

"""
    This method takes in an encoded line of text and returns a MyPuzzleRecordModel object (with all the fields populated).
    Fields are:
    The record::String field holds a single encoded line of text,
    The characters::Array{Char, 1} field holds the characters of the line of text,
    The len::Int64 field which holds the length (number of characters) of the encoded line of text.

    Arguemnet is record
"""
function build(record::String)::MyPuzzleRecordModel
    return _build(record)

end