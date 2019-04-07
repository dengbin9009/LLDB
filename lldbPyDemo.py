import lldb
import re

# 获取ASLR偏移地址
def fy_get_ASLR(debugger, command, result, internal_dict):
    # 获取'image list -o'命令的返回结果
    interpreter = lldb.debugger.GetCommandInterpreter()
    returnObject = lldb.SBCommandReturnObject()
    interpreter.HandleCommand('image list -o', returnObject)
    output = returnObject.GetOutput();
    # 正则匹配出第一个0x开头的16进制地址
    match = re.match(r'.+(0x[0-9a-fA-F]+)', output)
    if match:
        print match.group(1)
    else:
        return None
# And the initialization code to add your commands 
def __lldb_init_module(debugger, internal_dict):
    # 'command script add fy_get_ASLR' : 给lldb增加一个'fy_get_ASLR'命令
    # '-f lldbPyDemo.fy_get_ASLR' : 该命令调用了lldbPyDemo文件的fy_get_ASLR函数
    debugger.HandleCommand('command script add fy_get_ASLR -f lldbPyDemo.fy_get_ASLR')
    print 'The "fy_get_ASLR" python command has been installed and is ready for use.'