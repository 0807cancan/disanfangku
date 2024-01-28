import {TextLayout} from '@ohos/textlayoutbuilder';
import {TextInfo} from '@ohos/textlayoutbuilder';
@Entry
@Component

struct Index {

  @State message: string = 'Hello World'
  @State layout: TextLayout.Layout = new TextLayout.Layout();

  public  aboutToAppear() {

    let textInfo = new TextInfo();
    textInfo.setStart(2)
    textInfo.setEnd(8)
    textInfo.setFontColor('#ff0000')
    this.layout
      .setText("杨灿")
      .setSingleLine(true)
     // .setSpecialTextInfo()
      .setSpecialTextClick((textInfo) =>{
        console.info('我点击了 = '+textInfo.getText())
      });
  }
  build() {
    Column() {
      Text("默认显示").fontSize(16).fontColor("#999999").margin({ left: 14, top: 14, bottom: 14 })
      Column() {
        //TextLayout({ model: this.layout})
      }.backgroundColor("#cccccc").margin({ left: 14, right: 14 }).borderRadius(10)
    }.alignItems(HorizontalAlign.Start)
  }
}