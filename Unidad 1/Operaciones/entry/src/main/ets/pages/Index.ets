import router from '@ohos.router';

@Entry
@Component
struct CalculatorApp {
  @State num1: string = ''
  @State num2: string = ''
  @State result: string = ''

  calculate(op: string) {
    let a = parseFloat(this.num1)
    let b = parseFloat(this.num2)

    if (isNaN(a) || isNaN(b)) {
      this.result = "Ingresa números válidos"
      return
    }

    if (op === '+') {
      this.result = (a + b).toString()
    }
    else if (op === '-') {
      this.result = (a - b).toString()
    }
    else if (op === '*') {
      this.result = (a * b).toString()
    }
    else if (op === '/') {
      if (b !== 0) {
        this.result = (a / b).toString()
      } else {
        this.result = "Error: División por 0"
      }
    }
  }

  build() {
    Column({ space: 15 }) {
      Text("Calculadora Básica")
        .fontSize(25)
        .fontWeight(FontWeight.Bold)

      TextInput({ placeholder: "Número 1" })
        .type(InputType.Normal)
        .onChange(value => this.num1 = value)

      TextInput({ placeholder: "Número 2" })
        .type(InputType.Normal)
        .onChange(value => this.num2 = value)

      Row({ space: 10 }) {
        Button("+").onClick(() => this.calculate('+'))
        Button("-").onClick(() => this.calculate('-'))
        Button("×").onClick(() => this.calculate('*'))
        Button("÷").onClick(() => this.calculate('/'))
      }

      Text("Resultado: " + this.result)
        .fontSize(20)
        .fontColor(Color.Blue)
    }
    .width('100%')
    .height('100%')
    .padding(20)
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
  }
}
