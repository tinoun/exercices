CHARS = [*?A..?Z], [*?a..?z]

def caesar_cipher(texte, shift)
 texte.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift }.join
end

puts caesar_cipher('Ta putain de race la mere qui putain!', 5)