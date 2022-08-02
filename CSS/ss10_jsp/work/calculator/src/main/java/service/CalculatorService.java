package service;

public class CalculatorService {

    public static double calculator(double firstOperand, double secondOperand, String operator) throws ArithmeticException {
        double result = 0;
        switch (operator) {
            case "addition":
                return  result = firstOperand+secondOperand;

            case "subtraction":
                return  result = firstOperand-secondOperand;


            case "multiplication":
               return result =firstOperand*secondOperand;


            case "division":
               if (secondOperand!=0){
                  return result=firstOperand/secondOperand;
               }else {
                   throw new ArithmeticException("Can not divide by zero");
               }
        }
        return result;
    }
}


