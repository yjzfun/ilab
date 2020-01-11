# ilab

## 介绍
此项目是后台基于SSM框架, 前端基于jsp技术的一个《实验室设备管理系统》， 于18年所写， 当时还是未毕业的学生。 技术有些许陈旧。希望通过`搜索`而来的学生， 能够当做参考借鉴， 切莫抄袭照搬。

## 写在前面
由于项目技术陈旧， 现在2020年了， 在来拿这个项目作为毕业设计已然不合适。 那么我推荐以下的技术能够更加迅速的搭建一个系统， 完成毕业设计。

- [若依](https://gitee.com/y_project/RuoYi/)
  * 一个`开源`的[半成品后台管理系统](https://gitee.com/y_project/RuoYi/)， 为什么说是半成品呢， 因为它已经帮你完成了大部分功能：
    - 角色权限管理
    - 菜单管理
    - 定时任务
    - 在线监控
    - 连接池监视
    - 等等..

## 关于本项目如何使用

- 修改配置文件
```
// 关于连接数据库的参数
applicationContext.xml
mysql.properties
```
- 运行sql脚本
  * 创建数据库 `lab`
  * 运行doc目录下的lab.sql
- 在项目目录下（src\ilab_pro）运行install
```
mvn install
```
- 将war包部署到tomcat
  * 将target目录下的war包放到tomcat即可看到效果
  * 对应的网址 `localhost:8080/ilab/index.jsp`

## 如何自己二次开发
由于项目已经久远， 根据遗留下的war包， 找到了引入的jar包文件。 手动的写了个pom.xml文件， 同时， 对于非maven用户， 在src下的lib文件放的都是本项目所依赖的jar包。

其余请参考[如何使用eclipse搭建SSM](https://blog.csdn.net/luffysk/article/details/81608973)

## 论文
论文的[地址](), 在重申一遍， 仅供参考， 不过就算抄袭， 论文最后查重也过不了的。

## 最后
如果还有什么问题， 欢迎提issue， 或者通过邮箱的方式联系我
在下的邮箱: yjzfun@163.com