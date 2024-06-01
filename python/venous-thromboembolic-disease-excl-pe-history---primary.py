# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"ZV12811","system":"readv2"},{"code":"ZV12800","system":"readv2"},{"code":"107023.0","system":"readv2"},{"code":"101655.0","system":"readv2"},{"code":"19562.0","system":"readv2"},{"code":"102776.0","system":"readv2"},{"code":"102777.0","system":"readv2"},{"code":"5614.0","system":"readv2"},{"code":"17847.0","system":"readv2"},{"code":"104290.0","system":"readv2"},{"code":"106566.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('venous-thromboembolic-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["venous-thromboembolic-disease-excl-pe-history---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["venous-thromboembolic-disease-excl-pe-history---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["venous-thromboembolic-disease-excl-pe-history---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
