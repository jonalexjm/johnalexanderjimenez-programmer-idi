function testJavascript(){
    var cosmeticos = [
        { id: 1, nombre: "cremaA", codigoitem: 1, cantidad: 3 },
        { id: 2, nombre: "cremaA", codigoitem: 1, cantidad: 4 },
        { id: 3, nombre: "cremaA", codigoitem: 1, cantidad: 2 },
        { id: 4, nombre: "cremaB", codigoitem: 2, cantidad: 9 },
        { id: 5, nombre: "cremaB", codigoitem: 2, cantidad: 2 },
        { id: 3, nombre: "lapizC", codigoitem: 3, cantidad: 1 },
        { id: 7, nombre: "lapizC", codigoitem: 3, cantidad: 9 }
    ];
    var cremaA = [];
    cosmeticos.forEach(function(element) {
    
        if (element.nombre === "cremaA") {
            cremaA.push(element);
            // console.log(element);
        }
    });
    console.log(cremaA);

    
    var cantidades = [];
    cremaA.forEach(function(element) {
        cantidades.push(element.cantidad);
    });
    console.log(cantidades);
    
    
    var sumatoria = 0;
    cantidades.forEach(function(element) {
        sumatoria += element;
        //console.log(element);
    });
    console.log(sumatoria); 
    
    
    
    var cremaA = [];
    var cantidades = [];
    var sumatoria = 0;
    cosmeticos.forEach(function(element) {
        if (element.nombre === "cremaA") {
            cremaA.push(element);
            cantidades.push(element.cantidad);
            sumatoria += element.cantidad;
        }
    });
    console.log(cremaA);
    console.log(cantidades);
    console.log(sumatoria);
}
