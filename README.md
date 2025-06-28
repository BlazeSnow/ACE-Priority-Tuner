# ACE Priority Tuner

> 通过添加Windows注册表项以限制腾讯ACE反作弊系统的优先级

## 添加的注册表项

- `CpuPriorityClass`控制进程的CPU调度优先级
- `IoPriority`控制进程执行输入/输出操作（读写硬盘、网络通信）时的优先级
- `PagePriority`控制进程在内存管理方面的优先级

## 处理的程序名录

- ACE-Tray.exe
- SGuardUpdate64.exe
- SGuardSvc64.exe
- SGuard64.exe
- ACE-Service64.exe

## 使用方法

1. 下载本仓库的[ACE-Priority-Tuner.cmd](ACE-Priority-Tuner.cmd)
2. 右键文件，选择`以管理员身份运行`
3. 运行完毕后，重新启动计算机

## 恢复方法

1. 下载本仓库的[RM-ACE-Priority-Tuner.cmd](RM-ACE-Priority-Tuner.cmd)
2. 右键文件，选择`以管理员身份运行`
3. 运行完毕后，重新启动计算机

## 更新日志

见[CHANGELOG.md](CHANGELOG.md)
