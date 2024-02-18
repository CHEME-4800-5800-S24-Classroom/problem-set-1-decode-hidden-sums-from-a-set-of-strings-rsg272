"""
    MyPuzzleRecordModel
    A type that consist of 3 fields
    The record::String field holds a single encoded line of text,
    The characters::Array{Char, 1} field holds the characters of the line of text,
    The len::Int64 field which holds the length (number of characters) of the encoded line of text.

"""
# TODO: Finish the MyPuzzleRecordModel type
mutable struct MyPuzzleRecordModel
    #data
    record::String 
    characters::Array{Char, 1} 
    len::Int64 

    #method
    MyPuzzleRecordModel() = new();

end