## 1.2 我编写Perl程序的环境

我是在Windows10系统下选择了Notepad++作为编辑器，然后在[perl](https://strawberryperl.com/)下载perl语言后，通过cmd+R打开命令行提示符，验证是否安装成功
```cmd
perl -v
```
然后发现了如下的报错***perl Locale 'Chinese (Simplified)_China.936' is unsupported***，
可以通过以下命令行消除这一提示
```cmd
set LC_ALL=C
set LANG=C
```