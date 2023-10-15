```verilog
$stop        //停止运行仿真，常用
$stop(n)     //带参数系统任务，根据参数0，1，或2不同，输出仿真信息
$finish      //结束运行仿真，不可继续仿真
$finish(n)   //带参数系统任务，根据参数的不同：0，1或2，输出仿真信息
                 // 0： 不输出任何信息
                 // 1： 输出当前仿真时刻和位置
                 // 2：输出房前仿真时刻、位置和仿真过程中用到的memory以及cpu时间的统计
$random      //产生随机数
$random%n    //产生范围-n到n之间的随机数
{$random}%n  //产生范围0到n之间的随机数
$monitor     //仿真打印输出，打印出仿真过程中的变量，使其终端显示
 //比如：    $monitor($time,"clk = %d reset = %d out = %d",clk,reset,out);
$display     //终端打印字符串，显示仿真结果等
 //比如：     $display("Simulation start !");
$display("input is %b %b %b,output is %b",a,b,en,z);
$time        //返回64位整型时间
$stime       //返回32位整型时间
```

```verilog
`timescale 1ns/1ps  //设定仿真时间单位/精度
module project_tb ( );


	//逻辑设计中输入信号在这里对应reg型变量
	//逻辑设计中的输出信号在这里对应wire型
	
	//待测试模块的例化
	//括号里面不一定就是ab，主要根据top文件的输入输出信号的定义
	 and u1 (
	     .a(a),
	     .b(b),
	     .out(out)
	 );
	
	//使用initial或always语句块产生激励//时钟复位信号等
	//建议加$stop停止仿真
	//监控和比较输出响应等其它验证
endmodule
```

