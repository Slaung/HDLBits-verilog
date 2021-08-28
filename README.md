# Verilog-Practice
HDLBits website practices

## 筆記區
(一). 基本宣告
  1. module: 起始宣告，裡面放置input、output腳位，最後面需搭配endmodule。
  2. wire: 訊號線，宣告wire即可做拉線動作

(二). 資料型態
  1. 資料狀態
    
    0: 邏輯0。
    1: 邏輯1。
    x,X: Unknow or Float。
    z,Z: High Impendence(高阻抗)。 
  
  2. 連接線Net

    * 沒有記憶性
    * 預設值為z
    * 不允許兩個wire連在一起(若型態為wand/wor例外)
    eq:
      input a,b;
      output c,d,e;
      
      wire c;
      wand d;
      wor e;
      
      // wire接一起 => 錯誤
      assign c = a;
      assign c = b;
      
      // wire-and => d = a&b
      assign d = a;
      assign d = b;
      
      // wire-or => e = a|b
      assign e = a;
      assign e = b;
      
  3. 進制表示

    表示法: <位元長度>'<進制表示><數值>。
    <位元長度>: 用十進制表示位元長度。
    <進制表示>: 二進制(b)、八進制(o)、十進制(d)、十六進制(h)，預設為十進制。
    <數值>：可用底線_ 增加可讀性，數值內也可以混用X和Z。
    eq:
      n = 5'b01101            // 二進制
      n = 22                  // 十進制
      n = 12'b0000_1111_0000  // 增加可讀性
      n = 4'hf                // 十六進制(二進制的1111)
      n = 4'bxxx1             // 前三位元未知，最後為1
      n = 4'bz01              // 前兩位為z，後兩位為01
