PROGRAM Task4(INPUT, OUTPUT);
USES
  DOS;

FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Index, NextIndex: INTEGER;
  Args, Last, Res: STRING;
BEGIN
  Args := GetEnv('QUERY_STRING');
  Index := Pos(Key+'=', Args);
  Last := Copy(Args, Index+LENGTH(Key)+1);
  NextIndex := Pos('&', Last);
  IF(NextIndex = 0)
  THEN
    EXIT(Copy(Last, 1));
  EXIT(Copy(Last, 1, NextIndex-1))
END;

BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('first_name: ', GetQueryStringParameter('first_name'));
  WRITELN('last_name: ', GetQueryStringParameter('last_name'));
  WRITELN('age: ', GetQueryStringParameter('age'))
END.
