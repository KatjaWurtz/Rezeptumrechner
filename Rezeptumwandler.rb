# Frage nach dem Rezeptnamen
puts "Name des Rezepts eingeben"
recipe = gets.chomp.capitalize 

# Frage ob Zutatengruppen angelegt werden sollen
recipe_groups_bool = false
while recipe_groups_bool == false do
   puts "Sollen die Zutaten in Gruppen eingeteilt werden? j/n"
   recipe_groups = gets.chomp.downcase
   if 
      recipe_groups == "j" || recipe_groups == "n"
      recipe_groups_bool = true
   else 
      puts "Ungültige Eingabe!"
   end
end

# Frage nach Anzahl der Zutatengruppen
if recipe_groups == "j"
   puts "Wieviele Zutatengruppen sollen angelegt werden?"
   number_of_groups = gets.chomp.to_i
   # TO DO: hier fehlt noch was wenn keine Zahl eingegeben wird

# Frage so oft nach Überschrift für Zutatengruppe und Zutaten wie angegeben
   g = 1
   ingredient_group = Array.new
   ingredients = Array.new
   while g <= number_of_groups do
      puts "Name der " + g.to_s + ". Zutatengruppe"
      ingredient_group.push(gets.chomp.capitalize) # TO DO: hier fehlt noch was wenn kein Wort eingegeben wird
      puts "Zutaten für " + ingredient_group[g-1] + " eingeben"
      ingredients.push(gets.gsub(/\n/, ";")) #split?
      g += 1
   end   
   # puts ingredient_group[0..number_of_groups] 
   # puts ingredients[0..number_of_groups]




elsif
   puts "Zutaten eingeben"

end
# sonst Frage nach Zutaten


# Frage nach Anweisungen

# Ausgabe des umgewandelten Textes