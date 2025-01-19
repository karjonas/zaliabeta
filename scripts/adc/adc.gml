/// @description  adc(num1, num2, *carry)
function adc() {

	// Simulate 6502 ADC(ADD WITH CARRY)


	argument[0] &= $FF;
	argument[1] &= $FF;

	if (argument_count > 2)
	{   return (argument[0] + argument[1] + (argument[2]>0)) &$FF;  }
	    return (argument[0] + argument[1])                   &$FF;
	//







}
