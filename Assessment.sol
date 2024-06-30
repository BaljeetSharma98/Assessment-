// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyHome {
    uint private Salary;
    uint private Fees;
    uint private Expenses;
    uint private PocketMoney;

    function setExpenses(uint _Salary, uint _Fees,uint _Expenses) public {
         Salary = _Salary; 
         Fees = _Fees;
         Expenses = _Expenses;

         if(Salary<Fees + Expenses){
            revert("Salary must be greater than expenses"); // Here revert function stop person to Pay Expenses if greater than his salary.
         }
    }
    
    function Children_PocketMoney(uint _PocketMoney) public {
        require(PocketMoney <= 100, "Children Should have to spent less");  // Require ensures that children pocketmoney is less than 100 dollars.
        PocketMoney  = _PocketMoney;
        
    }

    function Salary_Remaining() public view returns (uint) {
        uint remainingSalary = Salary - Fees - Expenses - PocketMoney;

        assert(remainingSalary < Salary); // After the expenses, remaining salary must be less than the initial Salary.
        return remainingSalary;
    }
}
