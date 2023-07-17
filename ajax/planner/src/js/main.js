"use strict";

const Housekeeping_book= {
    colection_balance_sheet: {
    income: 0,
    expence: 0,
    end_balance: 0
    },
    booking: [],

    write_entry() {
        let entry = {
            titel: prompt("Titel: ").trim(),
            typ: this.checkType(),
            amount: this.calcAmount(),
            date: this.checkDate(),
            timestamp: new Date(),
            uuidTest: Date.now()
        };
        this.booking.push(entry);
    },
    calcAmount() {
        let result;
        let userInput= prompt("Betrag (in Euro): ").trim(); 
        if(userInput.match(/^\d+(?:(?:,|\.)\d\d?)?$/) !== null) {
            result = parseFloat(userInput.replace(',', '.'));
            result = parseFloat(result.toFixed(2));
            console.log(result);
            return parseInt(result * 100);
        } else {
            console.log("Ungültig ${userInput}");
            return false;
        }
        
    },
    checkDate() {
        let result;
        let userInput = prompt("Datum (jjjj-mm-tt): ").trim();
        if(userInput.match(/^\d{4}-\d{2}-\d{2}$/) !== null) {            
            result = new Date(userInput);
            console.log(result);
            return result;
        } else {
            console.log("Ungültig ${userInput}");
            return false;
        }
    },
    checkType() {
      let result = prompt("Typ (Aus- oder Eingabe): ").trim();
      if(result.match(/^(?:Einnahme|Ausgabe)$/) !== null) {
        return result;
      } else {
        console.log(result);
        return false;
      } 
    },
    calculating() {
        let new_colection_balance_sheet = {
            income: 0,
            expence: 0,
            end_balance: 0
            };
        this.booking.forEach(function(p) {
            switch (p.typ) {
                case "Einnahme":
                    new_colection_balance_sheet.income += p.amount;
                    new_colection_balance_sheet.end_balance += p.amount;
                    break;
                case "Ausgabe":
                    new_colection_balance_sheet.expence += p.amount;
                    new_colection_balance_sheet.end_balance -= p.amount;
                    break;
                default:
                    console.log("Ungültiger Typ ");
                    break;
            }
        });
        this.colection_balance_sheet = new_colection_balance_sheet;
    },
    output_entry() {
        this.booking.forEach(function(page) {
        console.log(` Titel: ${page.titel} 
        Typ: ${page.typ}
        amount: ${page.amount}
        Datum: ${page.date.toLocaleDateString("de-DE", {
            year: "numeric",
            month: "2-digit",
            day: "2-digit"
        })}
        Timestamp: ${page.timestamp.toLocaleDateString("de-DE", {
            year: "numeric",
            month: "2-digit",
            day: "2-digit"
        })}
        `);
        // Ende 
        });
    },
    sort_entries() {
        this.booking.sort(function(a,b){
            if(a.date < b.date) {
                return -1;
            } else if(a.date < b.date) {
                return 1;
            } else {
                return 0;
            }
        });
    },

    output_balance() {
        console.log(` end_balance: ${this.colection_balance_sheet.end_balance}
        Ausgaben: ${this.colection_balance_sheet.expence} 
        Einnahmen: ${this.colection_balance_sheet.income}`
        );
    },
    add_entries() {
        let interact = true;
        while (interact) {
            this.write_entry();
            interact = confirm("Weiteren Eintrag eingeben?");
        }
        // Output balance 
        this.sort_entries();
        this.output_entry();
        this.calculating();
        this.output_balance();
    }
};
//Call the function 
Housekeeping_book.add_entries();
//log booking
console.log(Housekeeping_book);