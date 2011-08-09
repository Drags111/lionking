program LionKing;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

const
  libSmart = 'smart';

procedure std_setup (ServerURL, SecondParam: PChar; sizeX, sizeY: Integer; SomeStr: PChar); cdecl; external libSmart;

type

  { TLionKing }

  TLionKing = class(TCustomApplication)
  protected
    procedure DoRun; override;
  public
    constructor Create(TheOwner: TComponent); override;
    destructor Destroy; override;
    procedure WriteHelp; virtual;
  end;

procedure LoadSmart;
begin
  std_setup('http://world19.runescape.com/', 'plugin.js?param=o0,a1,m0', 765, 503, 's');
end;

{ TLionKing }

procedure TLionKing.DoRun;
var
  ErrorMsg: String;
begin
  // quick check parameters
  ErrorMsg:=CheckOptions('h','help');
  if ErrorMsg<>'' then begin
    ShowException(Exception.Create(ErrorMsg));
    Terminate;
    Exit;
  end;

  // parse parameters
  if HasOption('h','help') then begin
    WriteHelp;
    Terminate;
    Exit;
  end;

  { add your program here }
  Writeln('Whatup world?');
  LoadSmart;
  sleep(100000);

  // stop program loop
  Terminate;
end;

constructor TLionKing.Create(TheOwner: TComponent);
begin
  inherited Create(TheOwner);
  StopOnException:=True;
end;

destructor TLionKing.Destroy;
begin
  inherited Destroy;
end;

procedure TLionKing.WriteHelp;
begin
  { add your help code here }
  writeln('Usage: ',ExeName,' -h');
end;

var
  Application: TLionKing;

{$R *.res}

begin
  Application:=TLionKing.Create(nil);
  Application.Title:='Lion King';
  Application.Run;
  Application.Free;
end.
