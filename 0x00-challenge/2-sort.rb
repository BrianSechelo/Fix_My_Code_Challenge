###
#
#  Sort integer arguments (ascending) 
#
###
result = []

ARGV.each do |arg|
    # skip if not an integer
    next unless arg =~ /^-?\d+$/

    # convert to integer
    i_arg = arg.to_i

    # find the correct position to insert the integer
    is_inserted = false
    result.each_with_index do |num, index|
        if num > i_arg
            result.insert(index, i_arg)
            is_inserted = true
            break
        end
    end

    # insert at the end if the integer is the largest so far
    result << i_arg unless is_inserted
end

puts result
