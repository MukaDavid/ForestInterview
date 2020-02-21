unit ForestInterview.ControleTeclado;

interface

uses System.Types, FMX.Controls, FMX.Forms, FMX.Layouts, FMX.Types, System.Math, System.Classes;

type
  TControleTeclado = class(TComponent)
  private
    FKBBounds: TRectF;
    FNeedOffset: Boolean;
    FFormControle: TForm;
    FLayoutControle: TLayout;
    FVerticalScrollControle: TVertScrollBox;
    procedure UpdateKBBounds;
    procedure RestorePosition;
    procedure CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
    procedure FormVirtualKeyboardHidden(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect);
    procedure SetFormControle(const Value: TForm);
    procedure FormFocusChanged(Sender: TObject);
    procedure SetVerticalScrollControle(const Value: TVertScrollBox);
  public
    property FormControle: TForm read FFormControle write SetFormControle;
    property LayoutControle: TLayout read FLayoutControle write FLayoutControle;
    property VerticalScrollControle: TVertScrollBox read FVerticalScrollControle write SetVerticalScrollControle;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{ TControleTeclado }

procedure TControleTeclado.CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
begin
  if FNeedOffset and (FKBBounds.Top > 0) then
  begin
    ContentBounds.Bottom := Max(ContentBounds.Bottom, 2 * FFormControle.ClientHeight - FKBBounds.Top);
  end;
end;

procedure TControleTeclado.RestorePosition;
begin
  VerticalScrollControle.ViewportPosition := PointF(VerticalScrollControle.ViewportPosition.X, 0);
  LayoutControle.Align := TAlignLayout.Client;
  VerticalScrollControle.RealignContent;
end;

procedure TControleTeclado.SetFormControle(const Value: TForm);
begin
  FFormControle := Value;
  FFormControle.OnVirtualKeyboardShown  := FormVirtualKeyboardShown;
  FFormControle.OnVirtualKeyboardHidden := FormVirtualKeyboardHidden;
end;

procedure TControleTeclado.SetVerticalScrollControle(const Value: TVertScrollBox);
begin
  FVerticalScrollControle := Value;
  FVerticalScrollControle.OnCalcContentBounds := CalcContentBoundsProc;
end;

procedure TControleTeclado.UpdateKBBounds;
var
  lFocused : TControl;
  lFocusRect: TRectF;
begin
  FNeedOffset := False;
  if Assigned(FormControle.Focused) then
  begin
    lFocused := TControl(FormControle.Focused.GetObject);
    lFocusRect := lFocused.AbsoluteRect;
    lFocusRect.Offset(VerticalScrollControle.ViewportPosition);
    if (lFocusRect.IntersectsWith(TRectF.Create(FKBBounds))) and (lFocusRect.Bottom > FKBBounds.Top) then
    begin
      FNeedOffset := True;
      LayoutControle.Align := TAlignLayout.Horizontal;
      VerticalScrollControle.RealignContent;
      Application.ProcessMessages;
      VerticalScrollControle.ViewportPosition := PointF(VerticalScrollControle.ViewportPosition.X, lFocusRect.Bottom - FKBBounds.Top);
    end;
  end;
  if not FNeedOffset then
    RestorePosition;
end;

procedure TControleTeclado.FormVirtualKeyboardHidden(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds.Create(0, 0, 0, 0);
  FNeedOffset := False;
  RestorePosition;
end;

procedure TControleTeclado.FormVirtualKeyboardShown(Sender: TObject; KeyboardVisible: Boolean; const Bounds: TRect);
begin
  FKBBounds := TRectF.Create(Bounds);
  FKBBounds.TopLeft := FormControle.ScreenToClient(FKBBounds.TopLeft);
  FKBBounds.BottomRight := FormControle.ScreenToClient(FKBBounds.BottomRight);
  UpdateKBBounds;
end;

constructor TControleTeclado.Create(AOwner: TComponent);
begin
  inherited;
  //VKAutoShowMode := TVKAutoShowMode.Always;
end;

procedure TControleTeclado.FormFocusChanged(Sender: TObject);
begin
  UpdateKBBounds;
end;

end.
