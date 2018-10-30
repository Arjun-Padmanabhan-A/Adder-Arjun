<html>
	<link rel="stylesheet" type="text/css" href="styles.css"/>
	
	<body>
		<br/>
		<p align="center" style="color:white;font-size:300%"> Welcome To The Adder </p>
		<form onsubmit="return false">
			<p class="inp">
				<input type = "text" 	id = "first" 	placeholder="Enter the first number" required>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type = "text" 	id = "second" 	placeholder="Enter the second number" required>
			</p>
			<br/>
			<p class="calculate">
				<input type = "submit" 	id = "submit" 	value="Add" onclick="validateText()">
				
			</p>
			<p class = "output">
				<br/><br/>
				<input type = "text" disabled	id = "result" placeholder="Result">
			</p>
		</form>
		<script type="text/javascript">
			function addNumbers()
			{
				var num1 = parseFloat( document.getElementById("first").value );
				var num2 = parseFloat( document.getElementById("second").value );
				var result = num1+num2;
				document.getElementById("result").value = result.toFixed(3);
			}
			function validateText()
			{
				var num1 = ( document.getElementById("first").value );
				var num2 = ( document.getElementById("second").value );
				var isNumeric = num1.match("^[0-9]+$");
				if ( isNaN(num1) )
				{
					alert("First Input should contain only digits");
				}
				else if ( isNaN(num2) )
				{
					alert("Second Input should contain only digits");
				}
				else
					addNumbers();
			}
		</script>
	</body>
</html>