def caesar_cipher(string, number)
    output = string.split('').map do |letter|
        index = letter.ord
        if(index + number > 90 && index + number <= 97  )
            index += number - 26
        elsif (index + number > 97 )
            index += number
        end
        index.chr
    end
    puts output.join('')
end

caesar_cipher("What a string!", 5)