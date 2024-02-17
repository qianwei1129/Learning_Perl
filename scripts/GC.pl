#!/usr/bin/perl

# 定义输入文件变量
# 如果没有提供输入文件，则打印用法并退出
my $infile = $ARGV[0];
if(!defined $ARGV[0]){die "\nThis script calculates GC values from each sequence of a given fasta file.\nUSAGE: perl GC.pl input.fasta\n\n"};

# 初始化变量
my $linecount = -1;
my @names;
my @seqs;
my $sequence;
open(INFILE, '<', $infile);

while (my $line = <INFILE>) {
  	chomp $line;									# 移除行末的换行符
  		if ($line=~ /\>/g){					# 如果行中有大于号（FASTA格式的头部）则执行
  		$linecount++;								# 计数器+1
  		$line =~s/>//g;;						# 移除行中的大于号
		$names[$linecount]=$line;			# 将序列名储存在names数组中
		$sequence=undef;					 		# 重置序列变量
		}
		else {									 			# 如果行中没有大于号，则视为序列数据
		$seqs[$linecount] = $sequence.= uc($line);
																	# 将序列数据转换为大写并存储到seqs数组中
		}
}
close(INFILE);

my $atseq;
my $seqcounter=-1;

foreach my $seq(@seqs){
	$seqcounter++;
	$atseq = $seq =~ tr/[gGcC]//;			# 计算序列中GC的含量
	# 打印序列名和GC含量
	print $names[$seqcounter],"\t", $atseq / length $seq, "\n";
	}
