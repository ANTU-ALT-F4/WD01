function fun1(){
    document.getElementById("table1").innerHTML = "";
    var Row = document.getElementById("numRow").value;
    var Col = document.getElementById("numCol").value;
    var data = "<table>";
    for(var i = 0; i<Row; i++){
        data += "<tr>";
        for(var j = 0; j < Col; j++){
            let a = i;
            let b = j;
            data += "<td>"+a+b+"</td>";
        }
        data += "</tr>";
    }
    data += "</table>";
    document.getElementById("table1").innerHTML = data;
}

function fun2(){
    document.getElementById("table2").innerHTML = "";
    var Row = document.getElementById("numRow").value;
    var Col = document.getElementById("numCol").value;
    var data = "<table>";
    for(var i = 0; i<Row; i++){
        data += "<tr>";
        for(var j = 0; j < Col; j++){
            let a = i;
            let b = j;
            if(b%2==0){
                data += "<td style='color: red;'>"+a+b+"</td>";
            }else{
                data += "<td>"+a+b+"</td>";
            }
        }
        data += "</tr>";
    }
    data += "</table>";
    document.getElementById("table2").innerHTML = data;
}

function fun3(){
    document.getElementById("table3").innerHTML = "";
    var Row = document.getElementById("numRow").value;
    var Col = document.getElementById("numCol").value;
    var data = "<table>";
    for(var i = 0; i<Row; i++){
        data += "<tr>";
        for(var j = 0; j < Col; j++){
            let a = i;
            let b = j;
            if(b==a){
                data += "<td style='color: red;'>"+a+b+"</td>";
            }else{
                data += "<td>"+a+b+"</td>";
            }
        }
        data += "</tr>";
    }
    data += "</table>";
    document.getElementById("table3").innerHTML = data;
}

function clear_func(){
    document.getElementById("table1").innerHTML = "";
    document.getElementById("table2").innerHTML = "";
    document.getElementById("table3").innerHTML = "";
    document.getElementById("numRow").value = "";
    document.getElementById("numCol").value = "";
}