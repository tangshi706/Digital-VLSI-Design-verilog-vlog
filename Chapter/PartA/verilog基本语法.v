//对于相关文件的说明
1.文件夹中有一个Extras.inc文件，这个时一个波形产生的外部文件，需要在testbench文件中包含进来，使用`include关键词进行加入。
例如：
initial
  begin
`include "../../VCS/Extras.inc"   //交代好这个文件的路径
............
  #50 $finish;       // Terminates simulation.
  end
  
Extras.inc文件的内容是vcd波形的产生，这里要注意的vcs查看的波形和Verdi的波形格式是不同的，Verdi是fsdb格式，故它们的产生语句也不同！
//vcs的波形产生
$dumpportsall;
$dumpfile("VCS_SimRun.VCD");
$dumpvars;
