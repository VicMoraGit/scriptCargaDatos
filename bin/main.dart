
import 'dart:io';
import 'dart:math';

void main() async {

  //await insertarTiendas();
  await insertarTrabajadores();
  //await insertarTickets();
  //await insertarProductos();
  
  await insertarProductosEnTiendas();
  await insertarProductosTicket();
  
  print('Ficheros creados correctamente');

}

void insertarProductosTicket() async {

  var codigoProducto, cantidad;
  var file = File('Ticket_Productos.csv');
  var sink = file.openWrite();
  
  for(var i = 0; i<50000000;i++){
    for(var j = 0; j<1+Random().nextInt(10); i++){

      codigoProducto = Random().nextInt(1000000);
      cantidad = 1+Random().nextInt(10);
      //se usa el await porque las inserciones tardan un poco cuando son muchas. Al no ser instantaneas sin el await se insertarian muy pocas
      //he usado el modulo en tipo para definir solo 10 tipos posibles.

      sink.writeln('$i,$codigoProducto,$cantidad');
      
      print('Insertado producto $j en ticket $i');
      
    }
}
  await sink.close();

}

void insertarTickets() async {

  var importe, dia, mes, codigoTrabajador;
  var file = File('Ticket.csv');
  var sink = file.openWrite();
  
  for(var i = 0; i<5000000; i++){

    importe = 100+Random().nextInt(10001);
    dia = 1+Random().nextInt(31);
    mes = 1+Random().nextInt(12);
    codigoTrabajador = Random( ).nextInt(1000000);
    
    
    //se usa el await porque las inserciones tardan un poco cuando son muchas. Al no ser instantaneas sin el await se insertarian muy pocas
    //he usado el modulo en tipo para definir solo 10 tipos posibles.

    await sink.writeln('$i,$importe,$dia-$mes-2019,$codigoTrabajador');
    
    print('Insertado ticket numero $i');
    
  }
  await sink.close();

}

void insertarTrabajadores() async {

  var salario, idTienda;
  var file = File('Trabajador.csv');
  var sink = file.openWrite();
  
  for(var i = 0; i<1000000; i++){

    salario = 1000+Random().nextInt(4001);
    idTienda = Random().nextInt(200000);
    
    //se usa el await porque las inserciones tardan un poco cuando son muchas. Al no ser instantaneas sin el await se insertarian muy pocas
    //he usado el modulo en tipo para definir solo 10 tipos posibles.

    await sink.writeln('$i,ID$i,Nombre$i,Apellidos$i,puesto'+ (i%5).toString() + ',$salario,$idTienda');
    
    print('Insertado trabajador numero $i');
    
  }
  await sink.close();
}

void insertarProductosEnTiendas() async {

  var codigoBarras, stock;
  var file = File('Tienda_Productos.csv');
  var sink = file.openWrite();
  for(var i = 0; i<200000;i++){
    for(var j = 0; j<100; j++){

      codigoBarras = Random().nextInt(1000000);
      stock = 10+Random().nextInt(191);
      //se usa el await porque las inserciones tardan un poco cuando son muchas. Al no ser instantaneas sin el await se insertarian muy pocas
      //he usado el modulo en tipo para definir solo 10 tipos posibles.

      await sink.writeln('$i,$codigoBarras,$stock');
      
      print('Insertado $stock productos $codigoBarras en la tienda $i');
      
    }
  }
  await sink.close();

}

void insertarProductos() async {

  var random;
  var file = File('Productos.csv');
  var sink = file.openWrite();

  for(var i = 0; i<1000000; i++){

    random = 50+Random().nextInt(951);
    
    //se usa el await porque las inserciones tardan un poco cuando son muchas. Al no ser instantaneas sin el await se insertarian muy pocas
    //he usado el modulo en tipo para definir solo 10 tipos posibles.

    await sink.writeln('$i,Nombre$i,Tipo'+ (i%10).toString() +',Descripcion1$i,$random');
    
    print('Insertado Producto numero $i');
    
  }
  await sink.close();

}

void insertarTiendas()async{

  var provincias =  ['La Coruña', 'Lugo', 'Pontevedra', 'Orense', 'Asturias', 'Cantabria', 'Vizcaya', 'Guipuzcoa', 'Alava', 'Navarra', 'Huesca', 'Zaragoza', 'Teruel', 'Lerida', 'Gerona', 'Barcelona', 'Tarragona', 'Leon', 'Palencia', 'Burgos', 'Zamora', 'Valladolid', 'Soria', 'Segovia', 'Salamanca', 'Avila', 'La Rioja', 'Madrid', 'Caceres', 'Badajoz', 'Guadalajara', 'Toledo', 'Cuenca','Ciudad Real', 'Albacete', 'Castellon', 'Valencia', 'Alicante', 'Islas Baleares', 'Huelva', 'Sevilla', 'Cordoba', 'Jaen', 'Cadiz', 'Malaga', 'Granada', 'Almeria', 'Murcia', 'Santa Cruz de Tenerife', 'Las Palmas'];
  var random;
  var file = File('Tienda.csv');
  var sink = file.openWrite();

  for(var i = 0; i<200000; i++){

    random = Random().nextInt(50);
    
    //se usa el await porque las inserciones tardan un poco cuando son muchas. Al no ser instantaneas sin el await se insertarian muy pocas


    await sink.writeln('$i,Tienda$i,Ciudad$i,Barrio$i,'+ provincias[random]);
    
    print('Insertada tienda numero $i');
    
  }
  await sink.close();

  //ANALYZE para actualizar las estadisticas

}