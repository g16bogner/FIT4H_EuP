#!/home/tb/.rvm/rubies/ruby-1.9.2-p290/bin/ruby

#file = File.new("protokoll.txt","w")
Dir.foreach('.') do |f|
  puts f
  if f.length > 2
    #puts f[0..2]
    #neu = f[] << '.mp3'
    alt = f
    #neu = f[0..2] + '.mp3'	# die ersten drei von links
    #neu = f[-7..-1]			#gibt die letzten 7 von rechts
    #neu = f[41..-1]			#gibt vom xx Zeichen von links bis ganz rechts aus
    #puts f[41..-1]

    #im sites-avalaible-Verzeichnis local durch conf ersetzen
    neu = f.gsub!('local','conf')
    neu = f.gsub!('rb','txt')
    puts neu
    #File.rename(alt,neu)
  end
  #File.rename( "test1.txt", "test2.txt" )
end