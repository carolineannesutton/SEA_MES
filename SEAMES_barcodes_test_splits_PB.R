require('baRcodeR')

# add sequences below as printing new bar codes
# comment out previous sequence to keep track of numbers already used
# each page has 30 labels, so print multiples of 30 at a time (e.g. 1020) to fill pages

#ID_numbers <- 10080000:10080299
#ID_numbers <- 10080300:10081319
#ID_numbers <- 10081320:10082339
#ID_numbers <- 10082340:10083359
#ID_numbers <- 10083360:10084379
#ID_numbers <- 10084380:10085399
#ID_numbers <- 10085400:10086419
#ID_numbers <- 10086420:10086989       # 2023/09/21 first set created on shore
#ID_numbers <- 10086990:10088009        # 2024/04/04 second set created on shore
#ID_numbers <- 10088010:10089029 # 2024/04/16 third set created on shore
#ID_numbers <- 10089030:10090049 # 20240501 first set at sea "Shipboard_Seames_1.pdf
#ID_numbers <- 10090050:10091069 # 20240504 second set at sea "Shipboard_Seames_2.pdf
#ID_numbers <- 10091070:10092089 # 20240507 third set at sea "Shipboard_Seames_3.pdf
#ID_numbers <- 10092090:10093109 # 20240510 FOURTH set at sea "Shipboard_Seames_4.pdf
#ID_numbers <- 10093110:10094129 # 20240510 Fifth set at sea "Shipboard_Seames_5.pdf
#ID_numbers <- 10094130:10095149 # 20240517 Sixth set at sea "Shipboard_Seames_6.pdf
#ID_numbers <- 10095150:10096169 # 20240521 Seventh set at sea "Shipboard_Seames_7.pdf
#ID_numbers <- 10096170:10097189 # 20240522 eighth set at sea "Shipboard_Seames_8.pdf
#ID_numbers <- 10097190:10098209 # 20240523 ninth set at sea "Shipboard_Seames_9.pdf
#ID_numbers <- 10098210:10099229 # 20240528  tenth set at sea "Shipboard_Seames_10.pdf
#ID_numbers <- 10099230:10100249 # 20240528  eleventh set at sea "Shipboard_Seames_11.pdf

### Caroline, you specify the number of times to print each barcode after its
### number
ID_numbers <- c(rep(10099230, 10), rep(10099231, 5), rep(10099232, 8))

strings <- rep("CSIRO SEA-MES 2023-2025\n", length(ID_numbers))

file_name <- "SEA-MES_lables"

custom_create_PDF(Labels=ID_numbers, name=file_name, alt_text = strings, 
                  type="linear",
                  Fsz=10, label_height = 0.5, numrow=10, numcol=3, denote="\n",
                  page_width = 8.3, page_height = 11.7)

