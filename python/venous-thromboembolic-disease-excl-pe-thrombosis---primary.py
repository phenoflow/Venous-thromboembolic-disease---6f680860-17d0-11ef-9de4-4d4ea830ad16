# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"G801.11","system":"readv2"},{"code":"14A8100","system":"readv2"},{"code":"8CMWA00","system":"readv2"},{"code":"G820.11","system":"readv2"},{"code":"G825.00","system":"readv2"},{"code":"G824.00","system":"readv2"},{"code":"G801F00","system":"readv2"},{"code":"G801.12","system":"readv2"},{"code":"G822.00","system":"readv2"},{"code":"G822000","system":"readv2"},{"code":"G801G00","system":"readv2"},{"code":"G801.13","system":"readv2"},{"code":"SP12200","system":"readv2"},{"code":"I82.2","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('venous-thromboembolic-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["venous-thromboembolic-disease-excl-pe-thrombosis---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["venous-thromboembolic-disease-excl-pe-thrombosis---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["venous-thromboembolic-disease-excl-pe-thrombosis---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
