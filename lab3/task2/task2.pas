PROGRAM Task2(INPUT, OUTPUT);
USES
  DOS;
VAR
  Arg: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Arg := GetEnv('QUERY_STRING');
  IF Arg = 'lanterns=1'
  THEN
    WRITELN('The British coming by the land')
  ELSE
    IF Arg = 'lanterns=2'
    THEN
      WRITELN('The British coming by the sea')
    ELSE
      IF Arg = 'lanterns=3'
      THEN
        WRITELN('The British coming by the air')
      ELSE
        WRITELN('The North Church shows something weird')
END.
