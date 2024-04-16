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
ID_numbers <- 10086990:10088009        # 2024/04/04 second set created on shore



strings <- rep("CSIRO SEA-MES 2023-2025\n", length(ID_numbers))
custom_create_PDF(Labels=ID_numbers, alt_text = strings, type="linear", Fsz=10, label_height = 0.5, numrow=10, numcol=3, denote="\n", page_width = 8.3, page_height = 11.7)
