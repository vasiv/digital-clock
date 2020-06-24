LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY secondsCounter IS
	PORT(	clk, rst	:IN		std_logic;
			q1			:BUFFER 	integer RANGE 0 TO 15);
END secondsCounter;

ARCHITECTURE arc OF secondsCounter IS
BEGIN
	PROCESS (clk, rst)
		BEGIN
			IF (rst = '1') THEN
				q1 <= 0;
			ELSIF (clk'EVENT AND clk='0') THEN
				IF (q1=9) THEN
					q1 <=0;
				ELSE
					q1 <= q1+1;
				END IF;
			END IF;
	END PROCESS;
END arc;