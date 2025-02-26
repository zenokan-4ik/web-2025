PROGRAM HelloUser(INPUT, OUTPUT);
USES
  DOS;
VAR
  Name, Args: STRING;
  Index: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Args := GetEnv('QUERY_STRING');
  Index := Pos('name=', Args);
  WRITE('Hello dear, ');
  WRITELN(Copy(Args, Index+5), '!');
END.