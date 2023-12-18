function factorial1(n) {
    if (n === 0 || n === 1) {
      return 1;
    } else {
      return n * factorial1(n - 1);
    }
  }
  
  // Пример использования
  var number1 = 5;
  var result1 = factorial1(number1);
  console.log(`Факториал числа ${number1} равен ${result1}.`);
 //
 //
 //
  function factorial2(n) {
    let result2 = 1;
    for (let x = n; x >= 1; x--) {
      result2 *= x;
    }
    return result2;
  }
  
  // Пример использования
  let number2 = 6;
  let result2= factorial2(number2);
  console.log(`Факториал числа ${number2} равен ${result2}.`);