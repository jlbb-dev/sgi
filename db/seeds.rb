# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Area.create(name: 'Poder Judicial');
Area.create(name: 'Fiscalia');
Area.create(name: 'Abogado Particular');
Area.create(name: 'Defensoria');

ServiceArea.create(name:'No especifica');
ServiceArea.create(name:'Juzgado 1ra Instancia Civil - Sria 7');
ServiceArea.create(name:'Juzgado 1ra Instancia Civil - Sria 6');
ServiceArea.create(name:'Juzgado 1ra Instancia Civil - Sria 5');
ServiceArea.create(name:'Juzgado 1ra Instancia Civil - Sria 8');

ServiceType.create(name:'Capacitacion sobre JUDISOFT');
ServiceType.create(name:'Reparacion Inicio Windows');
ServiceType.create(name:'Reparacion Impresora');
ServiceType.create(name:'Reparacion UPS');

ServiceMode.create(name:'Presencial');
ServiceMode.create(name:'Remoto');

Tecnic.create(name: 'Jose Boronowski');
Tecnic.create(name: 'Jose Boronowski2');

RepairType.create(name:'Cambio Placa Madre');
RepairType.create(name:'Cambio Procesador');
RepairType.create(name:'Cambio Memoria');
RepairType.create(name:'Cambio Fuente');

RepairHistory.create(date: '11/05/2020',pccode: '0001515', observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 1);

RepairHistory.create(date: '11/05/2020',pccode: '0001515', observation:'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 2);

RepairHistory.create(date: '11/05/2020',pccode: '0001515', observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 3);

RepairHistory.create(date: '11/05/2020',pccode: '0001515', observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 4);

RepairHistory.create(date: '11/05/2020',pccode: '0001515', observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 1);

RepairHistory.create(date: '11/05/2020',pccode: '0001515', observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 1);

RepairHistory.create(date: '11/05/2020',pccode:'0001515', observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 2);

RepairHistory.create(date: '11/05/2020',pccode: '0001515',observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 3);

RepairHistory.create(date: '11/05/2020',pccode:'0001515', observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 4);

RepairHistory.create(date: '11/05/2020',pccode: '0001515',observation: 'sin observacion',tecnic_id: 1, service_area_id: 1,repair_type_id: 1);

Service.create(date: '11/05/2020',tecnic_id: 1, area_id: 1, service_area_id: 1,service_mode_id: 1,service_type_id: 1);

Service.create(date: '12/05/2020',tecnic_id: 1, area_id: 2, service_area_id: 2,service_mode_id: 2,service_type_id: 1);
Service.create(date: '13/05/2020',tecnic_id: 1, area_id: 3, service_area_id: 4,service_mode_id: 2,service_type_id: 4);
Service.create(date: '14/05/2020',tecnic_id: 1, area_id: 1, service_area_id: 3,service_mode_id: 1,service_type_id: 2);

Service.create(date: '15/05/2020',tecnic_id: 2, area_id: 3, service_area_id: 1,service_mode_id: 1,service_type_id: 1);

Service.create(date: '16/05/2020',tecnic_id: 2, area_id: 4, service_area_id: 2,service_mode_id: 1,service_type_id: 3);
Service.create(date: '17/05/2020',tecnic_id: 2, area_id: 3, service_area_id: 4,service_mode_id: 1,service_type_id: 3);
Service.create(date: '18/05/2020',tecnic_id: 2, area_id: 2, service_area_id: 3,service_mode_id: 1,service_type_id: 2);



