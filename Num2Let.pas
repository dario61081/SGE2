﻿unit Num2Let;

interface

uses sysutils;

Function CantidadEnLetra(curCantidad: Currency; MonNal: integer): String;
function NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;

implementation

function NumLetra(const mNum: Currency; const iIdioma, iModo: Smallint): String;
const
  iTopFil: Smallint = 6;
  iTopCol: Smallint = 10;
  aCastellano: array [0 .. 5, 0 .. 9] of PChar = (('UNA ', 'DOS ', 'TRES ',
    'CUATRO ', 'CINCO ', 'SEIS ', 'SIETE ', 'OCHO ', 'NUEVE ', 'UN '),
    ('ONCE ', 'DOCE ', 'TRECE ', 'CATORCE ', 'QUINCE ', 'DIECISEIS ',
    'DIECISIETE ', 'DIECIOCHO ', 'DIECINUEVE ', ''),
    ('DIEZ ', 'VEINTE ', 'TREINTA ', 'CUARENTA ', 'CINCUENTA ', 'SESENTA ',
    'SETENTA ', 'OCHENTA ', 'NOVENTA ', 'VEINTI'),
    ('CIEN ', 'DOSCIENTAS ', 'TRESCIENTAS ', 'CUATROCIENTAS ', 'QUINIENTAS ',
    'SEISCIENTAS ', 'SETECIENTAS ', 'OCHOCIENTAS ', 'NOVECIENTAS ', 'CIENTO '),
    ('CIEN ', 'DOSCIENTOS ', 'TRESCIENTOS ', 'CUATROCIENTOS ', 'QUINIENTOS ',
    'SEISCIENTOS ', 'SETECIENTOS ', 'OCHOCIENTOS ', 'NOVECIENTOS ', 'CIENTO '),
    ('MIL ', 'MILLON ', 'MILLONES ', 'CERO ', 'Y ', 'UNO ', 'DOS ', 'CON ',
    '', ''));
  aCatalan: array [0 .. 5, 0 .. 9] of PChar = (('UNA ', 'DUES ', 'TRES ',
    'QUATRE ', 'CINC ', 'SIS ', 'SET ', 'VUIT ', 'NOU ', 'UN '),
    ('ONZE ', 'DOTZE ', 'TRETZE ', 'CATORZE ', 'QUINZE ', 'SETZE ', 'DISSET ',
    'DIVUIT ', 'DINOU ', ''), ('DEU ', 'VINT ', 'TRENTA ', 'QUARANTA ',
    'CINQUANTA ', 'SEIXANTA ', 'SETANTA ', 'VUITANTA ', 'NORANTA ', 'VINT-I-'),
    ('CENT ', 'DOS-CENTES ', 'TRES-CENTES ', 'QUATRE-CENTES ', 'CINC-CENTES ',
    'SIS-CENTES ', 'SET-CENTES ', 'VUIT-CENTES ', 'NOU-CENTES ', 'CENT '),
    ('CENT ', 'DOS-CENTS ', 'TRES-CENTS ', 'QUATRE-CENTS ', 'CINC-CENTS ',
    'SIS-CENTS ', 'SET-CENTS ', 'VUIT-CENTS ', 'NOU-CENTS ', 'CENT '),
    ('MIL ', 'MILIO ', 'MILIONS ', 'ZERO ', '-', 'UN ', 'DOS ', 'AMB ',
    '', ''));
var
  aTexto: array [0 .. 5, 0 .. 9] of PChar;
  cTexto, cNumero: String;
  iCentimos, iPos: Smallint;
  bHayCentimos, bHaySigni: Boolean;

  (* *********************************** *)
  (* Cargar Textos según Idioma / Modo *)
  (* *********************************** *)

  procedure NumLetra_CarTxt;
  var
    i, j: Smallint;
  begin
    (* Asignación según Idioma *)

    for i := 0 to iTopFil - 1 do
      for j := 0 to iTopCol - 1 do
        case iIdioma of
          1:
            aTexto[i, j] := aCastellano[i, j];
          2:
            aTexto[i, j] := aCatalan[i, j];
        else
          aTexto[i, j] := aCastellano[i, j];
        end;

    (* Asignación si Modo Masculino *)

    if (iModo = 1) then
    begin
      for j := 0 to 1 do
        aTexto[0, j] := aTexto[5, j + 5];

      for j := 0 to 9 do
        aTexto[3, j] := aTexto[4, j];
    end;
  end;

(* ************************** *)
(* Traducir Dígito -Unidad- *)
(* ************************** *)

  procedure NumLetra_Unidad;
  begin
    if not((cNumero[iPos] = '0') or (cNumero[iPos - 1] = '1') or
      ((Copy(cNumero, iPos - 2, 3) = '001') and ((iPos = 3) or (iPos = 9))))
    then
      if (cNumero[iPos] = '1') and (iPos <= 6) then
        cTexto := cTexto + aTexto[0, 9]
      else
        cTexto := cTexto + aTexto[0, StrToInt(cNumero[iPos]) - 1];

    if ((iPos = 3) or (iPos = 9)) and (Copy(cNumero, iPos - 2, 3) <> '000') then
      cTexto := cTexto + aTexto[5, 0];

    if (iPos = 6) then
      if (Copy(cNumero, 1, 6) = '000001') then
        cTexto := cTexto + aTexto[5, 1]
      else
        cTexto := cTexto + aTexto[5, 2];
  end;

(* ************************** *)
(* Traducir Dígito -Decena- *)
(* ************************** *)

  procedure NumLetra_Decena;
  begin
    if (cNumero[iPos] = '0') then
      Exit
    else if (cNumero[iPos + 1] = '0') then
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1]
    else if (cNumero[iPos] = '1') then
      cTexto := cTexto + aTexto[1, StrToInt(cNumero[iPos + 1]) - 1]
    else if (cNumero[iPos] = '2') then
      cTexto := cTexto + aTexto[2, 9]
    else
      cTexto := cTexto + aTexto[2, StrToInt(cNumero[iPos]) - 1] + aTexto[5, 4];
  end;

(* *************************** *)
(* Traducir Dígito -Centena- *)
(* *************************** *)

  procedure NumLetra_Centena;
  var
    iPos2: Smallint;
  begin
    if (cNumero[iPos] = '0') then
      Exit;

    iPos2 := 4 - Ord(iPos > 6);

    if (cNumero[iPos] = '1') and (Copy(cNumero, iPos + 1, 2) <> '00') then
      cTexto := cTexto + aTexto[iPos2, 9]
    else
      cTexto := cTexto + aTexto[iPos2, StrToInt(cNumero[iPos]) - 1];
  end;

(* ************************************ *)
(* Eliminar Blancos previos a guiones *)
(* ************************************ *)

  procedure NumLetra_BorBla;
  var
    i: Smallint;
  begin
    i := Pos(' -', cTexto);

    while (i > 0) do
    begin
      Delete(cTexto, i, 1);
      i := Pos(' -', cTexto);
    end;
  end;

begin
  (* Control de Argumentos *)

  if (mNum < 0.00) or (mNum > 999999999999.99) or (iIdioma < 1) or (iIdioma > 2)
    or (iModo < 1) or (iModo > 2) then
  begin
    Result := 'ERROR EN ARGUMENTOS';
    Abort;
  end;

  (* Cargar Textos según Idioma / Modo *)

  NumLetra_CarTxt;

  (* Bucle Exterior -Tratamiento Céntimos- *)
  (* NOTA: Se redondea a dos dígitos decimales *)

  cNumero := Trim(Format('%12.0f', [Int(mNum)]));
  cNumero := StringOfChar('0', 12 - Length(cNumero)) + cNumero;
  iCentimos := Trunc((Frac(mNum) * 100) + 0.5);

  repeat
    (* Detectar existencia de Céntimos *)

    if (iCentimos <> 0) then
      bHayCentimos := True
    else
      bHayCentimos := False;

    (* Bucle Interior -Traducción- *)

    bHaySigni := False;

    for iPos := 1 to 12 do
    begin
      (* Control existencia Dígito significativo *)

      if not(bHaySigni) and (cNumero[iPos] = '0') then
        Continue
      else
        bHaySigni := True;

      (* Detectar Tipo de Dígito *)

      case ((iPos - 1) mod 3) of
        0:
          NumLetra_Centena;
        1:
          NumLetra_Decena;
        2:
          NumLetra_Unidad;
      end;
    end;

    (* Detectar caso 0 *)

    if (cTexto = '') then
      cTexto := aTexto[5, 3];

    (* Traducir Céntimos -si procede- *)

    if (iCentimos <> 0) then
    begin
      cTexto := cTexto + aTexto[5, 7];
      cNumero := Trim(Format('%.12d', [iCentimos]));
      iCentimos := 0;
    end;
  until not(bHayCentimos);

  (* Eliminar Blancos innecesarios -sólo Catalán- *)

  if (iIdioma = 2) then
    NumLetra_BorBla;

  (* Retornar Resultado *)

  Result := Trim(cTexto);
end;

Function CantidadEnLetra(curCantidad: Currency; MonNal: integer): String;
var
  i: integer;
  // MonNal: integer;
  Cantidad: Currency;
  Centavos: Currency;
  BloqueCero: Byte;
  NumeroBloques: Byte;
  Digito: Byte;
  PrimerDigito, SegundoDigito, TercerDigito: Byte;
  Resultado, Temp, strCentavos, Bloque: String;
  Unidades: Array [0 .. 28] of String;
  Decenas: Array [0 .. 8] of String;
  Centenas: Array [0 .. 8] of String;
begin
  Unidades[0] := 'UN';
  Unidades[1] := 'DOS';
  Unidades[2] := 'TRES';
  Unidades[3] := 'CUATRO';
  Unidades[4] := 'CINCO';
  Unidades[5] := 'SEIS';
  Unidades[6] := 'SIETE';
  Unidades[7] := 'OCHO';
  Unidades[8] := 'NUEVE';
  Unidades[9] := 'DIEZ';
  Unidades[10] := 'ONCE';
  Unidades[11] := 'DOCE';
  Unidades[12] := 'TRECE';
  Unidades[13] := 'CATORCE';
  Unidades[14] := 'QUINCE';
  Unidades[15] := 'DIESISEIS';
  Unidades[16] := 'DIESISIETE';
  Unidades[17] := 'DIESIOCHO';
  Unidades[18] := 'DIESINUEVE';
  Unidades[19] := 'VEINTE';
  Unidades[20] := 'VEINTIUNO';
  Unidades[21] := 'VEINTIDOS';
  Unidades[22] := 'VEINTITRES';
  Unidades[23] := 'VEINTICUATRO';
  Unidades[24] := 'VEINTICINCO';
  Unidades[25] := 'VEINTISEIS';
  Unidades[26] := 'VEINTISIETE';
  Unidades[27] := 'VEINTIOCHO';
  Unidades[28] := 'VEINTINUEVE';
  Decenas[0] := 'DIEZ';
  Decenas[1] := 'VEINTE';
  Decenas[2] := 'TREINTA';
  Decenas[3] := 'CUARENTA';
  Decenas[4] := 'CINCUENTA';
  Decenas[5] := 'SESENTA';
  Decenas[6] := 'SETENTA';
  Decenas[7] := 'OCHENTA';
  Decenas[8] := 'NOVENTA';
  Centenas[0] := 'CIENTO';
  Centenas[1] := 'DOSCIENTOS';
  Centenas[2] := 'TRESCIENTOS';
  Centenas[3] := 'CUATROCIENTOS';
  Centenas[4] := 'QUINIENTOS';
  Centenas[5] := 'SEISCIENTOS';
  Centenas[6] := 'SETECIENTOS';
  Centenas[7] := 'OCHOCIENTOS';
  Centenas[8] := 'NOVECIENTOS';
  Cantidad := Trunc(curCantidad);
  Centavos := (curCantidad - Cantidad) * 100;
  NumeroBloques := 1;
  Repeat
    PrimerDigito := 0;
    SegundoDigito := 0;
    TercerDigito := 0;
    Bloque := '';
    BloqueCero := 0;
    For i := 1 To 3 do
    begin
      Digito := Round(Cantidad) Mod 10;
      If Digito <> 0 Then
      begin
        Case i of
          1:
            begin
              Bloque := ' ' + Unidades[Digito - 1];
              PrimerDigito := Digito;
            end;
          2:
            begin
              If Digito <= 2 Then
              begin
                Bloque := ' ' + Unidades[(Digito * 10 + PrimerDigito - 1)];
              end
              Else
              begin
                If PrimerDigito <> 0 then
                  Temp := ' Y'
                else
                  Temp := '';
                Bloque := ' ' + Decenas[Digito - 1] + Temp + Bloque;
              End;
              SegundoDigito := Digito;
            end;
          3:
            begin
              If (Digito = 1) and (PrimerDigito = 0) and (SegundoDigito = 0)
              then
                Temp := 'CIEN'
              else
                Temp := Centenas[Digito - 1];
              Bloque := ' ' + Temp + Bloque;
              TercerDigito := Digito;
            end;
        End;
      end
      Else
      begin
        BloqueCero := BloqueCero + 1;
      End;
      Cantidad := Int(Cantidad / 10);
      If Cantidad = 0 Then
      begin
        Break;
      End;
    end;
    Case NumeroBloques of
      1:
        Resultado := Bloque;
      2:
        begin
          if BloqueCero = 3 then
            Temp := ''
          else
            Temp := ' MIL';
          Resultado := Bloque + Temp + Resultado;
        end;
      3:
        begin
          If (PrimerDigito = 1) and (SegundoDigito = 0) and (TercerDigito = 0)
          then
            Temp := ' MILLON'
          else
            Temp := ' MILLONES';
          Resultado := Bloque + Temp + Resultado;
        end;
    End;
    NumeroBloques := NumeroBloques + 1;
  Until Cantidad = 0;
  case MonNal of
    0:
      begin
        If curCantidad > 1 then
          Temp := ' GUARANIES.- '
        else
          Temp := ' GUARANI.- ';
        CantidadEnLetra := Resultado + Temp;
      end;
    1:
      begin
        If curCantidad > 1 then
          Temp := '  '
        else
          Temp := '  ';
        if Centavos = 0 then
          strCentavos := ''
        else
          strCentavos := 'CON ' + CantidadEnLetra(Centavos, 0);
        CantidadEnLetra := Resultado + Temp + strCentavos;
      end;
    2:
      begin
        If curCantidad > 1 then
          Temp := ' '
        else
          Temp := '  ';
        if Centavos = 0 then
          strCentavos := ''
        else
          strCentavos := 'CON ' + CantidadEnLetra(Centavos, 0);
        CantidadEnLetra := Resultado + Temp + strCentavos;
      end;
  end;
end;

end.
