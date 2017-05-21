# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company1=Company.new(company_name:'AGEMAR', rif:'J070060840', status:'OnGoing',type_company:'Naviera')
company1.save! if company1.valid?
company2=Company.new(company_name:'CONAVEN', rif:'J075433246', status:'OnGoing',type_company:'Naviera')
company2.save! if company2.valid?
company3=Company.new(company_name:'CCNI', rif:'J306559949', status:'OnGoing',type_company:'Naviera')
company3.save! if company3.valid?
company4=Company.new(company_name:'Aerocav', rif:'J306258698', status:'OnGoing',type_company:'NVOCC')
company4.save! if company4.valid?
company5=Company.new(company_name:'SSL', rif:'J001614141', status:'OnGoing',type_company:'NVOCC')
company5.save! if company5.valid?
company6=Company.new(company_name:'ATM', rif:'J305878277', status:'OnGoing',type_company:'NVOCC')
company6.save! if company6.valid?
puts"Cargo Company"

ships1=Ship.create(name:'Valentino', imo:'9195872', status: 'OnWay', type_ship: 'Portacontenedores')
ships2=Ship.create(name:'Vibrador', imo:'7372969', status: 'OnWay', type_ship: 'Portacontenedores')
ships3=Ship.create(name:'Monoco', imo:'9725055', status: 'OnWay', type_ship: 'Portacontenedores')
ships4=Ship.create(name:'Hope', imo:'6609212', status: 'OnWay', type_ship: 'Portacontenedores')
ships5=Ship.create(name:'Epidamn', imo:'8120595', status: 'OnWay', type_ship: 'Portacontenedores')
ships6=Ship.create(name:'Edarte I', imo:'7033123', status: 'OnWay', type_ship: 'Portacontenedores')
ships7=Ship.create(name:'Elbertor', imo:'8818075', status: 'OnWay', type_ship: 'Portacontenedores')
puts"Cargo  Ship"
Ship.where(id: 1).update(:company => Company.where(company_name: 'CONAVEN').first)
Ship.where(id: 2).update(:company => Company.where(company_name: 'CONAVEN').first)
Ship.where(id: 3).update(:company => Company.where(company_name: 'CCNI').first)
Ship.where(id: 4).update(:company => Company.where(company_name: 'CCNI').first)
Ship.where(id: 5).update(:company => Company.where(company_name: 'AGEMAR').first)
Ship.where(id: 6).update(:company => Company.where(company_name: 'AGEMAR').first)
Ship.where(id: 7).update(:company => Company.where(company_name: 'AGEMAR').first)
puts"Cargo  Ship Foreing Key"


containers1=Container.create(type_container:'Dryvan Std', bic:'ASCU1023241', :company => Company.where(company_name: 'AGEMAR').first, :ship => Ship.find_by(id: 5))
containers2=Container.create(type_container:'Dryvan High',bic:'ATSU2345267',:company => Company.where(company_name: 'AGEMAR').first,:ship => Ship.find_by(id: 6))
containers3=Container.create(type_container:'Dryvan Std',bic:'AUSU1872434',:company => Company.where(company_name: 'AGEMAR').first,:ship => Ship.find_by(id: 7))
containers4=Container.create(type_container:'Dryvan Std',bic:'ASCU8723458',:company => Company.where(company_name: 'AGEMAR').first,:ship => Ship.find_by(id: 5))
containers5=Container.create(type_container:'Reefer Std',bic:'ASCU7634253',:company => Company.where(company_name: 'AGEMAR').first,:ship => Ship.find_by(id: 6))
containers6=Container.create(type_container:'Reefer High',bic:'ATSU8725367',:company => Company.where(company_name: 'AGEMAR').first,:ship => Ship.find_by(id: 7))
containers7=Container.create(type_container:'Dryvan Std',bic:'AUSU7354643',:company => Company.where(company_name: 'AGEMAR').first,:ship => Ship.find_by(id: 5))
containers8=Container.create(type_container:'Conair Std',bic:'ASCU7453722',:company => Company.where(company_name: 'CCNI').first,:ship => Ship.find_by(id: 3))
containers9=Container.create(type_container:'Reefer Std',bic:'ATSU6578349',:company => Company.where(company_name: 'CCNI').first,:ship => Ship.find_by(id: 4))
containers10=Container.create(type_container:'Conair High',bic:'AUSU8436284',:company => Company.where(company_name: 'CCNI').first,:ship => Ship.find_by(id: 3))
containers11=Container.create(type_container:'Dryvan Std',bic:'ATSU5463828',:company => Company.where(company_name: 'CCNI').first,:ship => Ship.find_by(id: 4))
containers12=Container.create(type_container:'Dryvan High',bic:'BTSU2345267',:company => Company.where(company_name: 'CCNI').first,:ship => Ship.find_by(id: 3))
containers13=Container.create(type_container:'Dryvan Std',bic:'BUSU1872434',:company => Company.where(company_name: 'CCNI').first,:ship => Ship.find_by(id: 4))
containers14=Container.create(type_container:'Dryvan Std',bic:'BSCU8723458',:company => Company.where(company_name: 'CCNI').first,:ship => Ship.find_by(id: 3))
containers15=Container.create(type_container:'Reefer Std',bic:'BSCU7634253',:company => Company.where(company_name: 'CONAVEN').first,:ship => Ship.find_by(id: 1))
containers16=Container.create(type_container:'Reefer High',bic:'BTSU8725367',:company => Company.where(company_name: 'CONAVEN').first,:ship => Ship.find_by(id: 2))
containers17=Container.create(type_container:'Dryvan Std',bic:'BUSU7354643',:company => Company.where(company_name: 'CONAVEN').first,:ship => Ship.find_by(id: 1))
containers17=Container.create(type_container:'Dryvan Std',bic:'BUSU7354643',:company => Company.where(company_name: 'CONAVEN').first,:ship => Ship.find_by(id: 2))
containers18=Container.create(type_container:'Conair Std',bic:'BSCU7453722',:company => Company.where(company_name: 'CONAVEN').first,:ship => Ship.find_by(id: 1))
containers19=Container.create(type_container:'Reefer Std',bic:'BTSU6578349',:company => Company.where(company_name: 'CONAVEN').first,:ship => Ship.find_by(id: 2))
containers20=Container.create(type_container:'Conair High',bic:'BUSU8436284',:company => Company.where(company_name: 'CONAVEN').first,:ship => Ship.find_by(id: 1))
containers21=Container.create(type_container:'Dryvan Std',bic:'BTSU5463828',:company => Company.where(company_name: 'CONAVEN').first,:ship => Ship.find_by(id: 2))
puts"Cargo Container"

puts"Final"
