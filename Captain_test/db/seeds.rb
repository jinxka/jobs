weapon_list = [
    [ "Long sword", 0, 0, 10, 25 ],
    [ "Magic stick", 0, 10, 0, 25 ],
    [ "Dagger", 10, 0, 0, 25 ],
    [ "Big Stick", 0, 5, 5, 20],
    [ "Butter Knife", 1, 1, 1, 11],
    [ "Big Rock", 5, 0, 5, 20],
    [ "Magic dagger", 5, 5, 0, 20]
]

weapon_list.each do |name, dext, intel, str, dmg|
  Weapon.create( name: name, dexterity: dext, intelligence: intel, strength: str, damage: dmg )
end

fighter_list = [
    [ "Bill", 0, 0, 10, 1],
    [ "Jack", 10, 0, 0, 3],
    [ "Jon", 0, 10, 0, 2],
    [ "Jason", 0, 5, 5, 4],
    [ "LeNoob", 1, 1, 1, 5],
    [ "Simon", 5, 0, 5, 6],
    [ "Suzan", 5, 5, 0, 7]
]

fighter_list.each do |name, dext, intel, str, weapon_id|
  Fighter.create( name: name, dexterity: dext, intelligence: intel, strength: str, weapon_id: weapon_id)
end