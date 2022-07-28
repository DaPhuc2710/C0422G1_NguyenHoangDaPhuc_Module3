package model;

public class Calculator {
    double firstOperand;
    double secondOperand;
    String operator;

    public Calculator() {
    }

    public Calculator(double firstOperand, double secondOperand, String operator) {
        this.firstOperand = firstOperand;
        this.secondOperand = secondOperand;
        this.operator = operator;
    }

    public double getFirstOperand() {
        return firstOperand;
    }

    public void setFirstOperand(double firstOperand) {
        this.firstOperand = firstOperand;
    }

    public double getSecondOperand() {
        return secondOperand;
    }

    public void setSecondOperand(double secondOperand) {
        this.secondOperand = secondOperand;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public static double getAddition(double firstOperand, double secondOperand) {
        return firstOperand + secondOperand;
    }

    public static double getSubtraction(double firstOperand, double secondOperand) {
        return firstOperand - secondOperand;
    }

    public static double getMultiplication(double firstOperand, double secondOperand) {
        return firstOperand * secondOperand;
    }

    public static double getDivision(double firstOperand, double secondOperand) {
        if (secondOperand != 0) {
            return firstOperand / secondOperand;
        } else {
            throw new ArithmeticException();
        }
    }

    public static double calculator(double firstOperand, double secondOperand, String operator) throws ArithmeticException {
        double result = 0;
        switch (operator) {
            case "addition": {
                result = getAddition(firstOperand, secondOperand);
                break;
            }
            case "subtraction": {
                result = getSubtraction(firstOperand, secondOperand);
                break;
            }
            case "multiplication": {
                result = getMultiplication(firstOperand, secondOperand);
                break;
            }
            case "division": {
                result = getDivision(firstOperand, secondOperand);
                break;
            }
        }
        return result;

    }
}


