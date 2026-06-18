@Entry
@Component
struct Index {
  @State count: number = 0;
  @State message: string = '当前计数：';

  build() {
    Row() {
      Column({ space: 30 }) {
        // 显示计数
        Text(this.message + this.count.toString())
          .fontSize(40)
          .fontWeight(FontWeight.Bold)
          .fontColor('#333333')

        // 操作按钮行
        Row({ space: 20 }) {
          // -1 按钮
          Button('-1')
            .width(80)
            .height(50)
            .fontSize(24)
            .backgroundColor('#FF6B6B')
            .onClick(() => {
              this.count -= 1;
            })

          // 重置按钮
          Button('重置')
            .width(100)
            .height(50)
            .fontSize(20)
            .backgroundColor('#4ECDC4')
            .onClick(() => {
              this.count = 0;
            })

          // +1 按钮
          Button('+1')
            .width(80)
            .height(50)
            .fontSize(24)
            .backgroundColor('#45B7D1')
            .onClick(() => {
              this.count += 1;
            })
        }
      }
      .width('100%')
      .padding(20)
    }
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .backgroundColor('#F7F9FC')
  }
}