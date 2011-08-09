unit smartfunc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

// Look at https://github.com/BenLand100/SMART/blob/master/src/Main.cpp#L30
// for all exports

const
  libSmart = 'smart';

procedure smart_setup (ServerURL, SecondParam: PChar; sizeX, sizeY: Integer;
    SomeStr: PChar); stdcall; external libSmart name 'std_setup';

procedure smart_getmousepos (var x, y: integer); stdcall; external libSmart
    name 'std_getmousepos';

{ Add stuff here that you want other units to see }

implementation






end.

