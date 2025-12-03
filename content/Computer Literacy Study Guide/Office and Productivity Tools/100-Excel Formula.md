---
title: Essential Excel Formulas Explained with Examples
linktitle: Excel Formulas
slug: essential-excel-formulas
description: A simple guide to essential Excel formulas. Learn the purpose of functions like SUM, AVERAGE, and IF with easy-to-understand examples.
weight: 100
---

Formulas are special commands that do calculations in spreadsheet software. They always start with an equals sign `=`.

{{< callout type="important" >}}
**Formulas do the math for you automatically.**
{{< /callout >}}

## 1. SUM

Purpose
: To add up all the numbers in a group of cells.

Example
: `=SUM(A2:A7)`

Explanation
: This formula adds all the numbers in the cells from A2 down to A7.

## 2. AVERAGE

Purpose
: To find the average of the numbers in a group of cells.

Example
: `=AVERAGE(B2:B10)`

Explanation
: This formula calculates the average mark from the scores listed in cells B2 to B10.

## 3. MAX

Purpose
: To find the largest number in a group of cells.

Example
: `=MAX(C2:C25)`

Explanation
: This formula finds and shows the highest score from a list of marks in cells C2 to C25.

## 4. MIN

Purpose
: To find the smallest number in a group of cells.

Example
: `=MIN(C2:C25)`

Explanation
: This formula finds and shows the lowest score from the same list of marks.

## 5. COUNT

Purpose
: To count how many cells in a group have a number in them.

Example
: `=COUNT(D2:D30)`

Explanation
: This formula can count how many students have a mark entered next to their name.

## 6. COUNTA

Purpose
: To count how many cells in a group are not empty. It counts both text and numbers.

Example
: `=COUNTA(A2:A30)`

Explanation
: This formula can count the total number of students by counting the cells with their names.

## 7. IF

Purpose
: To check if something is true, and then show one result if it is true and a different result if it is false.

Example
: `=IF(E2>50, "Pass", "Fail")`

Explanation
: This formula checks if the mark in cell E2 is greater than 50. It will show "Pass" if it is, and "Fail" if it is not.

## 8. TODAY

Purpose
: To show the current date in a cell.

Example
: `=TODAY()`

Explanation
: This puts today's date into the cell. The date will update automatically every time the file is opened.

## 9. NOW

Purpose
: To show the current date and the exact time in a cell.

Example
: `=NOW()`

Explanation
: This puts today's date and the current time into the cell. It updates whenever the sheet is changed.

## 10. TRIM

Purpose
: To remove extra spaces from the text in a cell.

Example
: `=TRIM(A2)`

Explanation
: This formula cleans up text by removing any accidental spaces from the beginning or end. It is useful for making lists of names neat.
