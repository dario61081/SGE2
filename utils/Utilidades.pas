unit Utilidades;

interface
 uses sysutils;

type
  tutilidades = class
  public
    class function parseNumber(value: string ): Extended;
  end;

implementation

{ tutilidades }

class function tutilidades.parseNumber(value: string): Extended;
var
  elemento: string;
begin
                                     //1.000
  elemento := stringreplace(value, '.',',', [rfReplaceAll]);
//  elemento := stringreplace(elemento, ',','.', [rfReplaceAll]);
//  elemento := StringReplace(elemento, '^',',',[rfReplaceAll]);

  result := elemento.ToDouble;




end;

end.
