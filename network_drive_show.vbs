'---- ネットワークドライブの接続 ------
set nw=WScript.CreateObject("WScript.Network")

dm=nw.UserDomain
if dm="NETWORK" then
id=nw.UserName

if Len( id )=7 then

 '----短大------

 sw=Mid( id , 3,1)

 if sw="0" then

  cl=Mid( id ,4,1 )

    ss=""  
    Select Case cl
      Case 6:ss="Cd"
      Case 7:ss="Pt"
      Case 8:ss="Bs"
      Case 9:ss="Dn"   
    End select  
 
    if ss<>"" then
      s1="\\servername\"+ss
      nw.MapNetworkDrive "x:",s1
      nw.MapNetworkDrive "y:","\\servername\col_drive"
    end if

 else

  cl=Mid( id , 3,2 )

 '---- 18M1アカウント（メディア学科）は82に置き換える ------
  if instr( 1 , cl , "M" )=1 then
    cl=82
  end if

  ss=""  
  Select Case cl
   Case 80:ss="Sl"
   Case 82:ss="Ma"
   Case 87:ss="Lc"
   Case 78:ss="Ce"
  End select  
 
 if ss<>"" then
   s1="\\servername\"+ss
   nw.MapNetworkDrive "x:",s1
   nw.MapNetworkDrive "y:","\\servername\uni_drive"  
 end if 
end if 
end if
end if
