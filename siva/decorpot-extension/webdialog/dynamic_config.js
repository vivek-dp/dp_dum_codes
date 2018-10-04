function getDynamic() {
	var width = document.getElementById('widthval').value;
	var height = document.getElementById('heightval').value;
	var depth = document.getElementById('depthval').value;
	var rotate = document.getElementById('rotateval').value;

	var values = [];
	if (width != ""){
		if (width <= 1000){
			values.push(width)
		}else{
			alert("Width value should be below 1000!");
			document.getElementById('widthval').value = "";
			document.getElementById('widthval').focus()
			return false;
		}		
	} else {
		values.push(0)
	}

	if (height != ""){
		if (height <= 1000){
			values.push(height)
		}else{
			alert("Height value should be below 1000!");
			document.getElementById('heightval').value = "";
			document.getElementById('heightval').focus()
			return false;
		}
	}else{
		values.push(0)
	}

	if (depth != ""){
		if (depth <= 1000){
			values.push(depth)
		}else{
			alert("Depth value should be below 1000!");
			document.getElementById('depthval').value = "";
			document.getElementById('depthval').focus()
			return false;
		}
	}else{
		values.push(0)
	}

	if (rotate != ""){
		if (rotate <= 360){
			values.push(rotate)
		}else{
			alert("Rotate value should be below 360!");
			document.getElementById('rotateval').value = "";
			document.getElementById('depthval').focus()
			return false;
		}
	}else{
		values.push(0)
	}
	window.location = 'skp:config_value@' + values;
}