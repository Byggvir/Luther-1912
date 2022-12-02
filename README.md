# Luther-1912
Scripts to download XML-version and import into SQL database

This git provides scripts for downloading the Bible as translated by [Martin Luther in 1912](https://www.toledot.info/download/bibel/SF_2022-02-27_GER_LUTH1912_xml.php) and importing it into a SQL database.

## Requirements

  * Bourne Again Shell *bash*, *awk*, *sed*, *wget*
  * MariaDB,MySQL or *sqlite3*

## Usage

To download the ZIP archive, extract and convert the books, chapters and verses to a CSV file for import, run the *bash/download_xml* script.

    ./bash/download_xml

The script stores the ZIP archive in the folder *data*.

To import the data into a MariaDB oder MySQL database run the following command:

    mysql -u root -p < SQL/create_db.sql

To create *sqlite3* database run

    sqlite3 bible.db < SQL/create_db.sqlite3

## Database structur

The database contains two tables.

  * *books*
  * *verses*
  * *wordlist*

The *books* table contains the names of the books of the bible. There is no chapter table because there are no titles for the chapters in the data. The *verses* table records have the following attributes:

  * number of the book within the bible (*bnumber*)
  * number of the chapter within the book (*cnumber*)
  * number of the verse within the chapter (*vnumber*)
  * and the text of the verse (*verse*)

The *wordlist* contains the to lower case converted words and the number of occurences.

#License

Copyright (C) 2022 Thomas Arend

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see https://www.gnu.org/licenses/.