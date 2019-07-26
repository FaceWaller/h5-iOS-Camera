# h5-iOS-Camera

当使用 WKWebView或者 UIWebView（已弃用）时，可以直接在h5中掉起相册。内部封装，无法查看实现。
<label>相册</label>
<input type='file' accept="image/*" multiple/>


同时原生端，在navigationController.view 上添加一个 layer.speed = 0  的UIImageView 时，会导致H5无法调用相册。

navigationController.view的子view里有speed = 0 与 UIIimageView 的搭配就会出现问题。


解决办法，给该uiimageView的layer设置代理。
imageView.layer.delegate = self;
