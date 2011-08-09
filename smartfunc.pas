unit smartfunc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

// Look at https://github.com/BenLand100/SMART/blob/master/src/Main.cpp#L30
// for all exports

const
  libSmart = 'smart';

procedure std_setup (ServerURL, SecondParam: PChar; sizeX, sizeY: Integer; SomeStr: PChar); stdcall; external libSmart;

procedure std_getmousepos (var x, y: integer); stdcall; external libSmart;

{ Add stuff here that you want other units to see }

implementation






end.

