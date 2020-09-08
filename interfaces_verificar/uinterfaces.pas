unit uinterfaces;

interface

type
IModal = interface
  procedure update();
  procedure onAccept();
  procedure onCancel();
end;
implementation

end.
