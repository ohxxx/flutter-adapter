<h1 align="center">
  <samp>Flutter Adapter</samp>
</h1>

## 适配方案思考

> 个人观点: 对于屏幕的适配，无非就是获取当前设备的 dpi、width、height、safe area 等与 UI Design 进行比值换算。对于流式布局这种方法很通用，但是牵扯到单屏（整屏）显示，这种方法就不太满足 UI 要求。目前对于单屏显示我想到的解决方案就是：使用不同宽高比值对 UI 中元素定向处理，代码见

## 适配函数使用

### `流式布局`

> 主要使用`pw(x)`进行页面适配

| iPhone 5s                                                                                                                     | iPhone 8                                                                                                                     | iPhone 12 Pro                                                                                                                       |
| ----------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://github.com/xxxDeveloper/flutter_adapter/blob/master/screenshots/flow_layout/iPhone%205s.png" width="375" /> | <img src="https://github.com/xxxDeveloper/flutter_adapter/blob/master/screenshots/flow_layout/iPhone%208.png" width="375" /> | <img src="https://github.com/xxxDeveloper/flutter_adapter/blob/master/screenshots/flow_layout/iPhone%2012%20Pro.png" width="375" /> |

### `单屏布局`

> 主要使用`pw(x)`、`ph(x)`、`variable(flag, x)`结合进行页面适配
> 根据单屏内容优先级对布局尺寸进行特殊处理

例如（并不是唯一优先级）

- 1、 width 使用`pw`进行适配
- 2、 height、padding、margin 使用`ph`进行适配
- 3、 公用动态组件 使用`variable`进行适配

| iPhone 5s                                                                                                                          | iPhone 8                                                                                                                           | iPhone 12 Pro                                                                                                                             |
| ---------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://github.com/xxxDeveloper/flutter_adapter/blob/master/screenshots/fullscreen_layout/iPhone%205.png" width="375" /> | <img src="https://github.com/xxxDeveloper/flutter_adapter/blob/master/screenshots/fullscreen_layout/iPhone%208.png" width="375" /> | <img src="https://github.com/xxxDeveloper/flutter_adapter/blob/master/screenshots/fullscreen_layout/iPhone%2012%20Pro.png" width="375" /> |
