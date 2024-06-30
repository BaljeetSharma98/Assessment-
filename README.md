Metacrafters in this challenge, I have created The MyHome smart contract manages salary, fees, expenses, and pocket money.

Also implemented the required statement:
(I)require()
(II)assert()
(III)revert()

Features
(i)Set Expenses
(ii)Allocate Pocket Money
(iii)Check Remaining Salary

Functions
(i)setExpenses(uint _Salary, uint _Fees, uint _Expenses)
Sets the values for salary, fees, and expenses.
Reverts the transaction if the total of fees and expenses exceeds the salary.
(ii)Children_PocketMoney(uint _PocketMoney)
Allocates pocket money to children.
Requires that the pocket money is less than or equal to 100.
(iii)Salary_Remaining()
Calculates the remaining salary after deducting fees, expenses, and pocket money.
Asserts that the remaining salary is less than the initial salary.
