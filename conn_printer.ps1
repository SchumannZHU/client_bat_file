##printer-defaultを設定
$WshNet = New-Object -ComObject WScript.Network
$PrinterPath = "\\server\printer-default"
$WshNet.AddWindowsPrinterConnection($PrinterPath)

##デフォルトプリンタの名前は以下コマンドで確認する
##(New-Object -ComObject WScript.NetWork).EnumPrinterConnections()

##デフォルトプリンタ設定
(New-Object -ComObject WScript.Network).EnumPrinterConnections()
$WshNet.SetDefaultPrinter('\\server\printer-default')
