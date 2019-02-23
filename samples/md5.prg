LOCAL MD5Hash, UTF8Encoding, bytes, result, Convert, hash, latin, encoding

MD5Hash= _screen.kodnet.getStaticWrapper("System.Security.Cryptography.MD5").create()


* strings in VFP are latin encode, but in .NET are UTF8
UTF8Encoding= _screen.kodnet.getStaticWrapper("System.Text.Encoding").UTF8
bytes= UTF8Encoding.getBytes("text� de prueba") 

result= MD5Hash.ComputeHash(bytes)


* get the pure string representation of the result hash in VFP
encoding= _screen.kodnet.getStaticWrapper("System.Text.Encoding").getEncoding("WINDOWS-1252")
hash= encoding.getString(m.result)
MESSAGEBOX(m.hash)


* or Convert to base64 or hex like you prefer 
Convert= _screen.kodnet.getStaticWrapper("System.Convert")
hash= m.Convert.ToBase64String(m.result)
MESSAGEBOX(m.hash)


