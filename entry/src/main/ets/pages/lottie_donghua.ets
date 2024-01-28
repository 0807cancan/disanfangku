import lottie from '@ohos/lottie'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  private mainRenderingSettings: RenderingContextSettings = new RenderingContextSettings(true)
  private mainCanvasRenderingContext: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.mainRenderingSettings)
  private path:string = "common/lottie/data.json"
   onPageHide(): void {
    // 随页面隐藏销毁动画
    lottie.destroy();
  }
  build() {
    Column() {

      Canvas(this.mainCanvasRenderingContext)
        .width('30%')
        .height('20%')
        .backgroundColor(Color.Gray)
         .onAppear(() => {
           //lottie.loadAnimation?.destroy('2016'); //加载动画前先销毁之前加载的动画
           lottie.loadAnimation({
             container: this.mainCanvasRenderingContext,  // 渲染上下文
             renderer: 'canvas',                          // 渲染方式
             loop: true,                                  // 是否循环播放,默认true
             autoplay: true,                              // 是否自动播放，默认true
             name: '2016',                                // 动画名称
             path: this.path,                             // json路径
             initialSegment: [10,130]                      // 播放的动画片段
           })
        })

    }
    .width('100%')
    .height('100%')
    .backgroundColor("#ffffff")
  }
}