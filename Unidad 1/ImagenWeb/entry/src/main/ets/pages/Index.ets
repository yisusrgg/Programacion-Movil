import router from '@ohos.router';

@Entry
@Component
struct MyImageApp {
  @State imgUrl: string = "https://surguanajuato.tecnm.mx/images/grecas/client-logo-7.png"
  @State gifUrl: string = "https://i.pinimg.com/originals/a8/9d/a8/a89da85473d826e0202833e797d51bbd.gif"

  build() {
    Column({ space: 20 }) {
      Text("Imagen y GIF desde Internet")
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .margin(10)

      // Imagen
      Image(this.imgUrl)
        .width(200)
        .height(100)
        .borderRadius(10)
        .objectFit(ImageFit.Cover)

      // GIF
      Image(this.gifUrl)
        .width(300)
        .height(200)
        .borderRadius(10)
        .objectFit(ImageFit.Cover)
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width("100%")
    .height("100%")
    .backgroundColor("#F5F5F5")
  }
}
