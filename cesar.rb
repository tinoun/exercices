#comment

CHARS = [*?A..?Z], [*?a..?z]

def caesar_cipher(texte, shift)
 texte.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift }.join
end

puts caesar_cipher('Cet exo est tellement chiant ...', 5)