using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
        }
    }
    public class Account
    {
        private decimal balance;
        public void deposit (decimal amount)
        {
            balance += amount;
            
        }
        public void withdraw(decimal amount)
        {
            balance -= amount;
        }
         
        public void TransferFunds(Account destinatin, decimal amount)
        {

        }
        public decimal balance
        {
            get
            {
                return balance;
            }

        }

    }
}
