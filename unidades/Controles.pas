unit Controles;

interface

uses IBTable, ib, IBCustomDataSet,  db;

procedure actualizarTabla(atable: tibtable);

implementation


procedure actualizarTabla(atable: TIBTable);
var
  b: tbookmark;
begin
  b := atable.GetBookmark;
  atable.DisableControls;
  atable.Refresh;
  atable.EnableControls;
  if atable.BookmarkValid(b) then
  atable.Bookmark := b;
  atable.FreeBookmark(b);


end;

end.
