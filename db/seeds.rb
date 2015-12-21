# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@per1=Persona.create({nombre: 'CRESTA', descripcion:'Centro Regional de estudios'}) 
@per2=Persona.create({nombre: 'AFIP', descripcion:'Admin Federal Ingresos Publicos'})
@per3=Persona.create({nombre: 'ARBA', descripcion:'Agencia de Recaudacion'})
@per4=Persona.create({nombre: 'Garrahan', descripcion:'Especializado en pediatria'})
@per5=Persona.create({nombre: 'CELTA', descripcion:'Cooperativa electrica'})
@per6=Persona.create({nombre: 'RAILS', descripcion:'Fundacion Ruby'})
@per7=Persona.create({nombre: 'Eliminame', descripcion:'Me podes eliminar'})

@cli1= Cliente.create({ nombre: 'Guillermo', apellido: 'Pose', nacimiento: '1991-10-01', genero: 'Masculino', dni: '100', cuil_cuit: '100', telefono: '1234', email: 'pose.guille@gmail.com', direccion: '56 586'})
@cli2= Cliente.create({ nombre: 'Alberto', apellido: 'Fernandez', nacimiento: '1950-12-01', genero: 'Masculino', dni: '101', cuil_cuit: '101', telefono: '12345', email: 'beto@gmail.com', direccion: ' 7 y 60'})
@cli3= Cliente.create({nombre: 'Eliminame', apellido: 'Eliminame', nacimiento: '1975-12-01', genero: 'Femenino', dni: '102', cuil_cuit: '102', telefono: '654', email: 'destroy@gmail.com', direccion: 'calle falsa'})


fac1=Factura.create({descripcion:'Recursos', monto:'400', emision:Time.now, persona: @per1, cliente: @cli1})
fac2=Factura.create({descripcion:'Tecnologias varias', monto:'800', emision:'2014-05-05', persona: @per1, cliente: @cli1})
fac3=Factura.create({descripcion:'Gastos varios', monto:'900', emision:'2015-03-20', persona: @per2, cliente: @cli1})
fac4=Factura.create({descripcion:'Hojas', monto:'190', emision:'2015-12-12', persona: @per2, cliente: @cli1})
fac5=Factura.create({descripcion:'Varios', monto:'210', emision:'2015-12-15', persona: @per3, cliente: @cli1})
fac6=Factura.create({descripcion:'Insumos', monto:'330', emision:'2015-10-10', persona: @per4, cliente: @cli1})
fac7=Factura.create({descripcion:'Vacunas', monto:'4400', emision:'2015-09-11', persona: @per4, cliente: @cli1})
fac8=Factura.create({descripcion:'Gasas', monto:'400', emision:'2013-05-12', persona: @per4, cliente: @cli1})
fac9=Factura.create({descripcion:'navidad', monto:'8800', emision:'2015-12-25', persona: @per5, cliente: @cli1})
fac10=Factura.create({descripcion:'Fiestas', monto:'777', emision:'2015-12-29', persona: @per5, cliente: @cli1})
fac11=Factura.create({descripcion:'Donacion', monto:'9999', emision:'2015-11-22', persona: @per6, cliente: @cli1})
fac12=Factura.create({descripcion:'otra Donacion', monto:'7757', emision:'2015-12-21', persona: @per6, cliente: @cli1})



fac13=Factura.create({descripcion:'Medicamentos', monto:'45990', emision:'2015-11-11', persona: @per4, cliente: @cli2})
fac13=Factura.create({descripcion:'Medicamentos', monto:'24990', emision:'2015-10-03', persona: @per4, cliente: @cli2})



