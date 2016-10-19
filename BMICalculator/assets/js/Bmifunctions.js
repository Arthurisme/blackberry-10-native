function bmiMetric(weight, height) {
	return (weight / Math.pow(height, 2)).toFixed(1);
}

function bmiImperial(weight, feet, inches) {
	var height = inches + feetToInches(feet);
	console.log("height is " + feetToInches(feet));
	return ((weight / Math.pow(height, 2)) * 703).toFixed(1);
}

function feetToInches(feet) {
	return feet * 12;
}

function getWeightStatus(bmiValue) {
	var status = "";
	console.log("BMI Value = " + bmiValue);
	if (bmiValue < 18.5) {
		status = "Underweight";
	} else if (bmiValue <= 24.9) {
		status = "Normal weight";
	} else if (bmiValue < 29.9) {
		status = "Overweight";
	} else {
		status = "Obese";
	}
	return status;
}