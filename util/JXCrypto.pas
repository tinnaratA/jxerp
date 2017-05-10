unit JXCrypto;


interface

uses wcrypt2,Windows, Messages, SysUtils, Variants, Classes;



const PASSWORD_KEY = 09876;

function md5(const Input: String): String;
function EncryptStr(const S: String; Key: Word): String;
function DecryptStr(const S: String; Key: Word): String;



implementation

function md5(const Input: String): String;
var
  hCryptProvider: HCRYPTPROV;
  hHash: HCRYPTHASH;
  bHash: array[0..$7f] of Byte;
  dwHashBytes: Cardinal;
  pbContent: PByte;
  i: Integer;
begin
  dwHashBytes := 16;
  pbContent := Pointer(PChar(Input));
  Result := '';
  if CryptAcquireContext(@hCryptProvider, nil, nil, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT or CRYPT_MACHINE_KEYSET) then
  begin
    if CryptCreateHash(hCryptProvider, CALG_MD5, 0, 0, @hHash) then
    begin
      if CryptHashData(hHash, pbContent, Length(Input) * sizeof(Char), 0) then
      begin
        if CryptGetHashParam(hHash, HP_HASHVAL, @bHash[0], @dwHashBytes, 0) then
        begin
          for i := 0 to dwHashBytes - 1 do
          begin
            Result := Result + Format('%.2x', [bHash[i]]);
          end;
        end;
      end;
      CryptDestroyHash(hHash);
    end;
    CryptReleaseContext(hCryptProvider, 0);
  end;
  Result := AnsiLowerCase(Result);
end;


function EncryptStr(const S: String; Key: Word): String;
var I: Integer;
const C1 = 53761;
      C2 = 32618;
begin
  Result := S;
  for I := 1 to Length(S) do begin
    Result[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(Result[I]) + Key) * C1 + C2;
  end;
end;
function DecryptStr(const S: String; Key: Word): String;
var I: Integer;
const C1 = 53761;
      C2 = 32618;
begin
  Result := S;
  for I := 1 to Length(S) do begin
   Result[I] := char(byte(S[I]) xor (Key shr 8));
   Key := (byte(S[I]) + Key) * C1 + C2;
  end;
end;




end.