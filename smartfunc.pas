unit smartfunc;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

const
  libSmart = 'smart';

procedure SmartSetup(root, params: string; width, height: Integer; initseq: string); stdcall; external libSmart name 'std_setup';
procedure SmartSetJVMPath(path: string); stdcall; external libSmart name 'std_setJVMPath';
{$IFDEF WINDOWS}
function SmartGetDC: integer; stdcall; external libSmart name 'std_getImageHDC';
function SmartGetDebugDC: integer; stdcall; external libSmart name 'std_getDebugHDC';
{$ENDIF}
function SmartImageArray(): integer; stdcall; external libSmart name 'std_getImageArray';
function SmartDebugArray(): integer; stdcall; external libSmart name 'std_getDebugArray';
function SmartGetRefresh(): integer; stdcall; external libSmart name 'std_getRefresh';
procedure SmartSetRefresh(x: integer); stdcall; external libSmart name 'std_setRefresh';
procedure SmartSetTransparentColor(color: integer); stdcall; external libSmart name 'std_setTransparentColor';
procedure SmartSetDebug(enabled: boolean); stdcall; external libSmart name 'std_setDebug';
procedure SmartSetGraphics(enabled: boolean); stdcall; external libSmart name 'std_setGraphics';
function SmartActive: boolean; stdcall; external libSmart name 'std_isActive';
function SmartEnabled: boolean; stdcall; external libSmart name 'std_isBlocking';
procedure SmartGetMousePos(var x, y: integer); stdcall; external libSmart name 'std_getMousePos';
procedure SmartHoldMouse(x, y: integer; left: boolean); stdcall; external libSmart name 'std_holdMouse';
procedure SmartReleaseMouse(x, y: integer; left: boolean); stdcall; external libSmart name 'std_releaseMouse';
procedure SmartMoveMouse(x, y: integer); stdcall; external libSmart name 'std_moveMouse';
procedure SmartWindMouse(x, y: integer); stdcall; external libSmart name 'std_windMouse';
procedure SmartDragMouse(x, y: integer); stdcall; external libSmart name 'std_dragMouse';
procedure SmartClickMouse(x, y: integer; left: boolean); stdcall; external libSmart name 'std_clickMouse';
procedure SmartSendKeys(Text: string); stdcall; external libSmart name 'std_sendKeys';
procedure SmartHoldKey(Code: Integer); stdcall; external libSmart name 'std_holdKey';
procedure SmartReleaseKey(Code: Integer); stdcall; external libSmart name 'std_releaseKey';
function SmartIsKeyDown(Code: Integer): Boolean; stdcall; external libSmart name 'std_isKeyDown';
function SmartGetColor(x, y: integer): integer; stdcall; external libSmart name 'std_getColor';
function SmartFindColor(var x, y: integer; color, sx, sy, ex, ey: integer): boolean; stdcall; external libSmart name 'std_findColor';
function SmartFindColorTolerance(var x, y: integer; color, sx, sy, ex, ey, tol: integer): boolean; stdcall; external libSmart name 'std_findColorTol';
function SmartFindColorSpiral(var x, y: integer; color, sx, sy, ex, ey: integer): boolean; stdcall; external libSmart name 'std_findColorSpiral';
function SmartFindColorSpiralTolerance(var x, y: integer; color, sx, sy, ex, ey, tol: integer): boolean; stdcall; external libSmart name 'std_findColorSpiralTol';
function SmartstringFromBytes(bytes: integer; str: string): integer; stdcall; external libSmart name 'std_stringFromBytes';
function SmartstringFromChars(chars: integer; str: string): integer; stdcall; external libSmart name 'std_stringFromChars';
function SmartstringFromstring(jstr: integer; str: string): integer; stdcall; external libSmart name 'std_stringFromstring';
function SmartInvokeIntMethod(obj: integer; clazz, meth: string; a, b: integer): integer; stdcall; external libSmart name 'std_invokeIntMethod';
function SmartGetFieldObject(parent: integer; path: string): integer; stdcall; external libSmart name 'std_getFieldObject';
function SmartIsPathValid(parent: integer; path: string): boolean; stdcall; external libSmart name 'std_isPathValid';
function SmartGetFieldInt(parent: integer; path: string): integer; stdcall; external libSmart name 'std_getFieldInt';
function SmartGetFieldShort(parent: integer; path: string): integer; stdcall; external libSmart name 'std_getFieldShort';
function SmartGetFieldByte(parent: integer; path: string): integer; stdcall; external libSmart name 'std_getFieldByte';
function SmartGetFieldFloat(parent: integer; path: string): extended; stdcall; external libSmart name 'std_getFieldFloat';
function SmartGetFieldDouble(parent: integer; path: string): extended; stdcall; external libSmart name 'std_getFieldDouble';
function SmartGetFieldBoolean(parent: integer; path: string): boolean; stdcall; external libSmart name 'std_getFieldBool';
function SmartGetFieldLongH(parent: integer; path: string): integer; stdcall; external libSmart name 'std_getFieldLongH';
function SmartGetFieldLongL(parent: integer; path: string): integer; stdcall; external libSmart name 'std_getFieldLongL';
function SmartGetFieldArrayInt(parent: integer; path: string; index: integer): integer; stdcall; external libSmart name 'std_getFieldArrayInt';
function SmartGetFieldArrayFloat(parent: integer; path: string; index: integer): extended; stdcall; external libSmart name 'std_getFieldArrayFloat';
function SmartGetFieldArrayDouble(parent: integer; path: string; index: integer): extended; stdcall; external libSmart name 'std_getFieldArrayDouble';
function SmartGetFieldArrayLongH(parent: integer; path: string; index: integer): integer; stdcall; external libSmart name 'std_getFieldArrayLongH';
function SmartGetFieldArrayLongL(parent: integer; path: string; index: integer): integer; stdcall; external libSmart name 'std_getFieldArrayLongL';
function SmartGetFieldArrayBoolean(parent: integer; path: string; index: integer): boolean; stdcall; external libSmart name 'std_getFieldArrayBool';
function SmartGetFieldArrayByte(parent: integer; path: string; index: integer): integer; stdcall; external libSmart name 'std_getFieldArrayByte';
function SmartGetFieldArrayShort(parent: integer; path: string; index: integer): integer; stdcall; external libSmart name 'std_getFieldArrayShort';
function SmartGetFieldArrayChar(parent: integer; path: string; index: integer): integer; stdcall; external libSmart name 'std_getFieldArrayChar';
function SmartGetFieldArray3DInt(parent: integer; path: string; x ,y, z: integer): integer; stdcall; external libSmart name 'std_getFieldArray3DInt';
function SmartGetFieldArray3DFloat(parent: integer; path: string; x ,y, z: integer): extended; stdcall; external libSmart name 'std_getFieldArray3DFloat';
function SmartGetFieldArray3DDouble(parent: integer; path: string; x ,y, z: integer): extended; stdcall; external libSmart name 'std_getFieldArray3DDouble';
function SmartGetFieldArray3DBoolean(parent: integer; path: string; x ,y, z: integer): boolean; stdcall; external libSmart name 'std_getFieldArray3DBool';
function SmartGetFieldArray3DLongH(parent: integer; path: string; x ,y, z: integer): integer; stdcall; external libSmart name 'std_getFieldArray3DLongH';
function SmartGetFieldArray3DLongL(parent: integer; path: string; x ,y, z: integer): integer; stdcall; external libSmart name 'std_getFieldArray3DLongL';
function SmartGetFieldArray3DByte(parent: integer; path: string; x ,y, z: integer): integer; stdcall; external libSmart name 'std_getFieldArray3DByte';
function SmartGetFieldArray3DShort(parent: integer; path: string; x ,y, z: integer): integer; stdcall; external libSmart name 'std_getFieldArray3DShort';
function SmartGetFieldArray3DChar(parent: integer; path: string; x ,y, z: integer): integer; stdcall; external libSmart name 'std_getFieldArray3DChar';
function SmartGetFieldArray3DObject(parent: integer; path: string; x ,y, z: integer): integer; stdcall; external libSmart name 'std_getFieldArray3DObject';
function SmartGetFieldArray2DInt(parent: integer; path: string; x ,y: integer): integer; stdcall; external libSmart name 'std_getFieldArray2DInt';
function SmartGetFieldArray2DFloat(parent: integer; path: string; x ,y: integer): extended; stdcall; external libSmart name 'std_getFieldArray2DFloat';
function SmartGetFieldArray2DDouble(parent: integer; path: string; x ,y: integer): extended; stdcall; external libSmart name 'std_getFieldArray2DDouble';
function SmartGetFieldArray2DBoolean(parent: integer; path: string; x ,yz: integer): boolean; stdcall; external libSmart name 'std_getFieldArray2DBool';
function SmartGetFieldArray2DLongH(parent: integer; path: string; x ,y: integer): integer; stdcall; external libSmart name 'std_getFieldArray2DLongH';
function SmartGetFieldArray2DLongL(parent: integer; path: string; x ,y: integer): integer; stdcall; external libSmart name 'std_getFieldArray2DLongL';
function SmartGetFieldArray2DByte(parent: integer; path: string; x ,y: integer): integer; stdcall; external libSmart name 'std_getFieldArray2DByte';
function SmartGetFieldArray2DShort(parent: integer; path: string; x ,y: integer): integer; stdcall; external libSmart name 'std_getFieldArray2DShort';
function SmartGetFieldArray2DChar(parent: integer; path: string; x ,y: integer): integer; stdcall; external libSmart name 'std_getFieldArray2DChar';
function SmartGetFieldArray2DObject(parent: integer; path: string; x ,y: integer): integer; stdcall; external libSmart name 'std_getFieldArray2DObject';
function SmartGetFieldArrayObject(parent: integer; path: string; index: integer): integer; stdcall; external libSmart name 'std_getFieldArrayObject';
function SmartGetFieldArraySize(parent: integer; path: string; dim: integer): integer; stdcall; external libSmart name 'std_getFieldArraySize';
function SmartIsEqual(obja,objb: integer): boolean; stdcall; external libSmart name 'std_isEqual';
function SmartIsNull(obj: integer): boolean; stdcall; external libSmart name 'std_isNull';
procedure SmartFreeObject(obj: integer); stdcall; external libSmart name 'std_freeObject';

implementation
end.

