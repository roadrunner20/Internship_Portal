<!DOCTYPE html>
<html>
<head>
<style>
table, td {
    border: 1px solid black;
}
</style>
</head>
<body>

<p>Click the button to add a new row at the first position of the table and then add cells and content.</p>

<table id="myTable">
  <tr>
    <td>Row1 cell1</td>
    <td>Row1 cell2</td>
  </tr>
  <tr>
    <td>Row2 cell1</td>
    <td>Row2 cell2</td>
  </tr>
  <tr>
    <td>Row3 cell1</td>
    <td>Row3 cell2</td>
  </tr>
</table>
<br>

//<button onclick="addRow('myTable')">Try it</button>

<input type="button"
    value="Add Row" onclick="addRow('myTable')"/>
    <button onclick="myFunction()">Click me</button>
    <p id="demo"></p>
    
    <script>
    
    function myFunction(){
    	
    	
    	//document.getElementByID("demo").innerHTML = element2;
    	out.print(element2);
    }
    
    
    
    </script>



<script>

function addRow(tableID) {

    var table = document.getElementById(tableID);

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);

    var cell1 = row.insertCell(0);
    var element1 = document.createElement("input");
    element1.type = "checkbox";
    cell1.appendChild(element1);

    var cell3 = row.insertCell(1);
   // var element2 = document.createElement('<input type="text" name="foo">');
   var element2 = document.createElement("input");
   
    element2.type = "text";
    cell3.appendChild(element2);

    var cell3 = row.insertCell(2);
    var element3 = document.createElement("input");
    element3.type = "text";
    cell3.appendChild(element3);

     var cell4 = row.insertCell(3);
    var element4 = document.createElement("input");
    element4.type = "text";
    cell4.appendChild(element4);
   // String[] foos = request.getParameterValues("foo");
   
    
    
    

}
</script>

</body>
</html>