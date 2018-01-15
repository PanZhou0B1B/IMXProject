# IMXProject
Object-C模板项目，基于其上派生实用项目。（CocoaPods管理，并在Podfile文件中已添加部分pods资源）

## 纯净版工程设置细节

**以下步骤已设置完毕，直接使用该工程即可。此处只是简单做下记录。**

1. `.gitignore`文件添加。
2. Pods配置文件初始化。
3. `APPs`文件夹创建：

	> * 主工程同等级嵌入子工程源码时，此处放置生成的静态库。即framework包。否则可以删除该文件夹。

4. `Resources `文件夹创建：

	> * 主工程同等级嵌入子工程源码时，生成的静态库若含有资源库。即bundle包放置此处。否则可以删除该文件夹。
	
5. 手动添加pch文件。名称为`proName-Prefix.pch`。

	> * 设置：进入Target->Build Settings:Precompile Prefix Header=YES；Prefix Header=$(SRCROOT)/$(PROJECT)/$(PROJECT)-Prefix.pch即可。
	> * 功能：工程内部需要引入的文件、公用宏定义等。
	
6. 删除`ViewController`，以及默认的`Main.storyboard`文件，后续使用分布式启动服务来做启动功能。

	> * 注意在`TARGETS->project->General->Deployment Info`中删除Main Interface值。
	> * 关于分布式启动服务，参见[APPLaucher启动组件开发](https://panzhow.gitbooks.io/ios/content/%E5%BC%80%E5%8F%91&%E8%BF%9B%E9%98%B6/%E6%A8%A1%E5%9D%97%E5%8C%96%E6%96%B9%E6%A1%88/App%E5%8A%9F%E8%83%BD%E6%9C%8D%E5%8A%A1%E5%8C%96/APPLaucher%E5%90%AF%E5%8A%A8%E7%BB%84%E4%BB%B6%E5%BC%80%E5%8F%91.html)
	
## TODO

1. 添加成熟的基础子工程，将类似启动功能完善。
	
	
## 附

1. 关于子工程创建问题，请参考[Object-C子工程脚手架:IMXMatrixProj](https://github.com/PanZhow/IMXMatrixProj)
	


