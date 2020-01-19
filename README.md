# ilab

## 介绍
此项目是后台基于SSM框架, 前端基于jsp技术的一个《实验室设备管理系统》， 于18年所写， 当时还是未毕业的学生。 技术有些许陈旧。希望通过`搜索`而来的同学， 能够当做参考借鉴， 切莫抄袭照搬。

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
 * 如果本地的数据库版本是8以上， 需要修改配置文件中关于dbcp的配置部分， 以及pom.xml的jdbc-connection版本。具体如何操作， 网上一搜一大把。这里不再赘述了。
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
论文的[地址](https://github.com/lovemyhan/ilab/blob/master/doc/SSM%E6%A1%86%E6%9E%B6%E4%B8%8B%E7%9A%84%E5%AE%9E%E9%AA%8C%E5%AE%A4%E7%AE%A1%E7%90%86%E7%B3%BB%E7%BB%9F-3%E7%A8%BF.docx)(非最终版！非最终版！非最终版！年代久远，文档丢失，这已经是最接近终稿的论文了)。

## 最后
如果还有什么问题， 欢迎提issue， 或者通过邮箱的方式联系我
在下的邮箱: yjzfun@163.com
