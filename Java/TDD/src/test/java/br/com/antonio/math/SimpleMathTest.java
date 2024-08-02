package br.com.antonio.math;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class SimpleMathTest {

	@Test
	void testSum() {
		SimpleMath math = new SimpleMath();
		
		Double actual = math.sum(10.3D, 5.1D);
		
		double expected = 15.4D;
		
		assertEquals(expected, actual, "The TestSum didn't produced expected result !");
		//
	}

}
