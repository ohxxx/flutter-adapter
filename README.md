# flutter_adapt

#### 基于 flutter 的屏幕适配方案

19 年时 flutter 项目中自己封装的对于屏幕适配的工具类，最近更新了一丢丢 🤏 内容

> 个人观点: 对于屏幕的适配，无非就是获取当前设备的 dpi、width、height、safe area 等与 UI Design 进行比值换算。对于流式布局这种方法很通用，但是牵扯到单屏（整屏）显示，这种方法就不太满足 UI 要求。目前对于单屏显示我想到的解决方案就是：使用不同宽高比值对 UI 中元素定向处理，代码见

#### 通过 Adapt 工具适配如下

#### `流式布局`

> 主要使用`adaptPx(x)`进行页面适配

| iPhone 5s                                                                                                                   | iPhone 8                                                                                                                   | iPhone 12 Pro                                                                                                                     |
| --------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://github.com/xxxDeveloper/flutter_adapt/blob/master/screenshots/flow_layout/iPhone%205s.png" width="375" /> | <img src="https://github.com/xxxDeveloper/flutter_adapt/blob/master/screenshots/flow_layout/iPhone%208.png" width="375" /> | <img src="https://github.com/xxxDeveloper/flutter_adapt/blob/master/screenshots/flow_layout/iPhone%2012%20Pro.png" width="375" /> |

#### `单屏布局`

> 主要使用`adaptPx(x)`、`adaptPm(x)`、`adaptDynamic(flag, x)`结合进行页面适配
> 根据单屏内容优先级对布局尺寸进行特殊处理

例如（并不是唯一优先级）

- 1、 width 使用`adaptPx`进行适配
- 2、 height、padding、margin 使用`adaptPm`进行适配
- 3、 公用动态组件 使用`adaptDynamic`进行适配

| iPhone 5s                                                                                                                        | iPhone 8                                                                                                                         | iPhone 12 Pro                                                                                                                           |
| -------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://github.com/xxxDeveloper/flutter_adapt/blob/master/screenshots/fullscreen_layout/iPhone%205.png" width="375" /> | <img src="https://github.com/xxxDeveloper/flutter_adapt/blob/master/screenshots/fullscreen_layout/iPhone%208.png" width="375" /> | <img src="https://github.com/xxxDeveloper/flutter_adapt/blob/master/screenshots/fullscreen_layout/iPhone%2012%20Pro.png" width="375" /> |
