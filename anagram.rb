
# creating a new class to send different test lists/words 
class An
    #main anagram? function which takes two arguments : the word to check , the dictionary path to check
    def anagram?(test_word, list) 
        #opening file, reading and splitting it by \b  -> backspace
        list=File.open(list).read.split(/\b/)
        #saving the result to an array anagram_result
        anagram_result=[]
        
        # new variable word_characters , first it gets a check word turns it to array, 
        #sort it in alphabetical and join to a string in downcase format
        #which is very powerful sides of ruby

        word_characters=test_word.chars.to_a.sort.join.downcase

        #loop for  the list to compare the words from the wordlist and given list characters
        list.each do |x|
            if x.chars.to_a.sort.join.downcase==word_characters
                anagram_result.push(x)
            end
        end
        if anagram_result == []
            puts "Sorry! No #{test_word.length} - letter anagrams found. "
        else
            puts "Anagrams of '#{test_word}':"
            puts anagram_result
        end
    end

end

    #creating a new object
    check=An.new
    puts "Let's check: "
    #checking it if it is anagram or not by get.chomp and giving input  -> wordlist.txt
    check.anagram?(gets.chomp.downcase, 'wordlist.txt')