dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


# This Method also works, but this is a long one with less efficient code
# def substrings (string, dictionary)
#     string_array = string.downcase.split
#     match_array = []
#     count_array = []
    
#     dictionary.each do |word|
#         if string_array.any? {|c| c.include?(word)}
#             match_array.push(word)
#         end
#         count = string_array.count {|i| i.include?(word)}
#         count_array.push(count)
#         count_array.delete(0)
#     end
#     new_hash = match_array.zip(count_array).to_h
# end 

def substrings(string, dictionary)
    hash = {}
    string_array = string.downcase.split
    string_array.each do |i|
        dictionary.each do |j|
            if i.include?(j)
                if hash.has_key?(j)
                    hash[j] += 1
                else
                    hash[j] = 1
                end
            end
        end
    end
    hash
end


puts substrings("Howdy partner, sit down! How's it going?", dictionary)