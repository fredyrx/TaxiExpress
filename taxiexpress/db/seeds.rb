# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    
address1 = Address.create([{name:'San borja'}])
address2 = Address.create([{name:'Surco'}])
address3 = Address.create([{name:'Miraflores'}])
address4 = Address.create([{name:'La Molina'}])
address5 = Address.create([{name:'San Borja'}])

routes1 = Route.create([{price:30},{address_origin_id:address1.id} , {address_destiny_id:address2.id}]) 
routes2 = Route.create([{price:30},{address_origin_id:address1.id} , {address_destiny_id:address3.id}]) 
routes3 = Route.create([{price:30},{address_origin_id:address1.id} , {address_destiny_id:address4.id}]) 
routes4 = Route.create([{price:30},{address_origin_id:address1.id} , {address_destiny_id:address5.id}])

routes5 = Route.create([{price:30},{address_origin_id:address2.id} , {address_destiny_id:address3}]) 
routes6 = Route.create([{price:30},{address_origin_id:address2.id} , {address_destiny_id:address4}]) 
routes7 = Route.create([{price:30},{address_origin_id:address2.id} , {address_destiny_id:address5}]) 

routes8 = Route.create([{price:30},{address_origin_id:address3.id} , {address_destiny_id:address4.id}]) 
routes9 = Route.create([{price:30},{address_origin_id:address3.id} , {address_destiny_id:address5.id}])

routes10 = Route.create([{price:30},{address_origin_id:address4.id} , {address_destiny_id:address5.id}]) 

    
