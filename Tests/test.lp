\ Model yanick_s model
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  5 y[1] + 5 y[2] + y[3] + 2 y[4] + 2 y[5] + 5 y[6] + 3 y[7] + 5 y[8]
   + 4 y[9] + 3 y[10] + 3 y[11] + 5 y[12] + 2 y[13] + y[14] + y[15]
   + 2 y[16] + 4 y[17] + 3 y[18] + 5 y[19] + 3 y[20]
Subject To
 spaltensumme_0: - y[0] + x[0,0] + x[1,0] + x[2,0] + x[3,0] + x[4,0]
   + x[5,0] + x[6,0] + x[7,0] + x[8,0] + x[9,0] + x[10,0] + x[11,0]
   + x[12,0] + x[13,0] + x[14,0] + x[15,0] + x[16,0] + x[17,0] + x[18,0]
   + x[19,0] + x[20,0] = 0
 spaltensumme_1: - y[1] + x[0,1] + x[1,1] + x[2,1] + x[3,1] + x[4,1]
   + x[5,1] + x[6,1] + x[7,1] + x[8,1] + x[9,1] + x[10,1] + x[11,1]
   + x[12,1] + x[13,1] + x[14,1] + x[15,1] + x[16,1] + x[17,1] + x[18,1]
   + x[19,1] + x[20,1] = 0
 spaltensumme_2: - y[2] + x[0,2] + x[1,2] + x[2,2] + x[3,2] + x[4,2]
   + x[5,2] + x[6,2] + x[7,2] + x[8,2] + x[9,2] + x[10,2] + x[11,2]
   + x[12,2] + x[13,2] + x[14,2] + x[15,2] + x[16,2] + x[17,2] + x[18,2]
   + x[19,2] + x[20,2] = 0
 spaltensumme_3: - y[3] + x[0,3] + x[1,3] + x[2,3] + x[3,3] + x[4,3]
   + x[5,3] + x[6,3] + x[7,3] + x[8,3] + x[9,3] + x[10,3] + x[11,3]
   + x[12,3] + x[13,3] + x[14,3] + x[15,3] + x[16,3] + x[17,3] + x[18,3]
   + x[19,3] + x[20,3] = 0
 spaltensumme_4: - y[4] + x[0,4] + x[1,4] + x[2,4] + x[3,4] + x[4,4]
   + x[5,4] + x[6,4] + x[7,4] + x[8,4] + x[9,4] + x[10,4] + x[11,4]
   + x[12,4] + x[13,4] + x[14,4] + x[15,4] + x[16,4] + x[17,4] + x[18,4]
   + x[19,4] + x[20,4] = 0
 spaltensumme_5: - y[5] + x[0,5] + x[1,5] + x[2,5] + x[3,5] + x[4,5]
   + x[5,5] + x[6,5] + x[7,5] + x[8,5] + x[9,5] + x[10,5] + x[11,5]
   + x[12,5] + x[13,5] + x[14,5] + x[15,5] + x[16,5] + x[17,5] + x[18,5]
   + x[19,5] + x[20,5] = 0
 spaltensumme_6: - y[6] + x[0,6] + x[1,6] + x[2,6] + x[3,6] + x[4,6]
   + x[5,6] + x[6,6] + x[7,6] + x[8,6] + x[9,6] + x[10,6] + x[11,6]
   + x[12,6] + x[13,6] + x[14,6] + x[15,6] + x[16,6] + x[17,6] + x[18,6]
   + x[19,6] + x[20,6] = 0
 spaltensumme_7: - y[7] + x[0,7] + x[1,7] + x[2,7] + x[3,7] + x[4,7]
   + x[5,7] + x[6,7] + x[7,7] + x[8,7] + x[9,7] + x[10,7] + x[11,7]
   + x[12,7] + x[13,7] + x[14,7] + x[15,7] + x[16,7] + x[17,7] + x[18,7]
   + x[19,7] + x[20,7] = 0
 spaltensumme_8: - y[8] + x[0,8] + x[1,8] + x[2,8] + x[3,8] + x[4,8]
   + x[5,8] + x[6,8] + x[7,8] + x[8,8] + x[9,8] + x[10,8] + x[11,8]
   + x[12,8] + x[13,8] + x[14,8] + x[15,8] + x[16,8] + x[17,8] + x[18,8]
   + x[19,8] + x[20,8] = 0
 spaltensumme_9: - y[9] + x[0,9] + x[1,9] + x[2,9] + x[3,9] + x[4,9]
   + x[5,9] + x[6,9] + x[7,9] + x[8,9] + x[9,9] + x[10,9] + x[11,9]
   + x[12,9] + x[13,9] + x[14,9] + x[15,9] + x[16,9] + x[17,9] + x[18,9]
   + x[19,9] + x[20,9] = 0
 spaltensumme_10: - y[10] + x[0,10] + x[1,10] + x[2,10] + x[3,10] + x[4,10]
   + x[5,10] + x[6,10] + x[7,10] + x[8,10] + x[9,10] + x[10,10] + x[11,10]
   + x[12,10] + x[13,10] + x[14,10] + x[15,10] + x[16,10] + x[17,10]
   + x[18,10] + x[19,10] + x[20,10] = 0
 spaltensumme_11: - y[11] + x[0,11] + x[1,11] + x[2,11] + x[3,11] + x[4,11]
   + x[5,11] + x[6,11] + x[7,11] + x[8,11] + x[9,11] + x[10,11] + x[11,11]
   + x[12,11] + x[13,11] + x[14,11] + x[15,11] + x[16,11] + x[17,11]
   + x[18,11] + x[19,11] + x[20,11] = 0
 spaltensumme_12: - y[12] + x[0,12] + x[1,12] + x[2,12] + x[3,12] + x[4,12]
   + x[5,12] + x[6,12] + x[7,12] + x[8,12] + x[9,12] + x[10,12] + x[11,12]
   + x[12,12] + x[13,12] + x[14,12] + x[15,12] + x[16,12] + x[17,12]
   + x[18,12] + x[19,12] + x[20,12] = 0
 spaltensumme_13: - y[13] + x[0,13] + x[1,13] + x[2,13] + x[3,13] + x[4,13]
   + x[5,13] + x[6,13] + x[7,13] + x[8,13] + x[9,13] + x[10,13] + x[11,13]
   + x[12,13] + x[13,13] + x[14,13] + x[15,13] + x[16,13] + x[17,13]
   + x[18,13] + x[19,13] + x[20,13] = 0
 spaltensumme_14: - y[14] + x[0,14] + x[1,14] + x[2,14] + x[3,14] + x[4,14]
   + x[5,14] + x[6,14] + x[7,14] + x[8,14] + x[9,14] + x[10,14] + x[11,14]
   + x[12,14] + x[13,14] + x[14,14] + x[15,14] + x[16,14] + x[17,14]
   + x[18,14] + x[19,14] + x[20,14] = 0
 spaltensumme_15: - y[15] + x[0,15] + x[1,15] + x[2,15] + x[3,15] + x[4,15]
   + x[5,15] + x[6,15] + x[7,15] + x[8,15] + x[9,15] + x[10,15] + x[11,15]
   + x[12,15] + x[13,15] + x[14,15] + x[15,15] + x[16,15] + x[17,15]
   + x[18,15] + x[19,15] + x[20,15] = 0
 spaltensumme_16: - y[16] + x[0,16] + x[1,16] + x[2,16] + x[3,16] + x[4,16]
   + x[5,16] + x[6,16] + x[7,16] + x[8,16] + x[9,16] + x[10,16] + x[11,16]
   + x[12,16] + x[13,16] + x[14,16] + x[15,16] + x[16,16] + x[17,16]
   + x[18,16] + x[19,16] + x[20,16] = 0
 spaltensumme_17: - y[17] + x[0,17] + x[1,17] + x[2,17] + x[3,17] + x[4,17]
   + x[5,17] + x[6,17] + x[7,17] + x[8,17] + x[9,17] + x[10,17] + x[11,17]
   + x[12,17] + x[13,17] + x[14,17] + x[15,17] + x[16,17] + x[17,17]
   + x[18,17] + x[19,17] + x[20,17] = 0
 spaltensumme_18: - y[18] + x[0,18] + x[1,18] + x[2,18] + x[3,18] + x[4,18]
   + x[5,18] + x[6,18] + x[7,18] + x[8,18] + x[9,18] + x[10,18] + x[11,18]
   + x[12,18] + x[13,18] + x[14,18] + x[15,18] + x[16,18] + x[17,18]
   + x[18,18] + x[19,18] + x[20,18] = 0
 spaltensumme_19: - y[19] + x[0,19] + x[1,19] + x[2,19] + x[3,19] + x[4,19]
   + x[5,19] + x[6,19] + x[7,19] + x[8,19] + x[9,19] + x[10,19] + x[11,19]
   + x[12,19] + x[13,19] + x[14,19] + x[15,19] + x[16,19] + x[17,19]
   + x[18,19] + x[19,19] + x[20,19] = 0
 spaltensumme_20: - y[20] + x[0,20] + x[1,20] + x[2,20] + x[3,20] + x[4,20]
   + x[5,20] + x[6,20] + x[7,20] + x[8,20] + x[9,20] + x[10,20] + x[11,20]
   + x[12,20] + x[13,20] + x[14,20] + x[15,20] + x[16,20] + x[17,20]
   + x[18,20] + x[19,20] + x[20,20] = 0
 zeilensumme_0: - y[0] + x[0,0] + x[0,1] + x[0,2] + x[0,3] + x[0,4]
   + x[0,5] + x[0,6] + x[0,7] + x[0,8] + x[0,9] + x[0,10] + x[0,11]
   + x[0,12] + x[0,13] + x[0,14] + x[0,15] + x[0,16] + x[0,17] + x[0,18]
   + x[0,19] + x[0,20] = 0
 zeilensumme_1: - y[1] + x[1,0] + x[1,1] + x[1,2] + x[1,3] + x[1,4]
   + x[1,5] + x[1,6] + x[1,7] + x[1,8] + x[1,9] + x[1,10] + x[1,11]
   + x[1,12] + x[1,13] + x[1,14] + x[1,15] + x[1,16] + x[1,17] + x[1,18]
   + x[1,19] + x[1,20] = 0
 zeilensumme_2: - y[2] + x[2,0] + x[2,1] + x[2,2] + x[2,3] + x[2,4]
   + x[2,5] + x[2,6] + x[2,7] + x[2,8] + x[2,9] + x[2,10] + x[2,11]
   + x[2,12] + x[2,13] + x[2,14] + x[2,15] + x[2,16] + x[2,17] + x[2,18]
   + x[2,19] + x[2,20] = 0
 zeilensumme_3: - y[3] + x[3,0] + x[3,1] + x[3,2] + x[3,3] + x[3,4]
   + x[3,5] + x[3,6] + x[3,7] + x[3,8] + x[3,9] + x[3,10] + x[3,11]
   + x[3,12] + x[3,13] + x[3,14] + x[3,15] + x[3,16] + x[3,17] + x[3,18]
   + x[3,19] + x[3,20] = 0
 zeilensumme_4: - y[4] + x[4,0] + x[4,1] + x[4,2] + x[4,3] + x[4,4]
   + x[4,5] + x[4,6] + x[4,7] + x[4,8] + x[4,9] + x[4,10] + x[4,11]
   + x[4,12] + x[4,13] + x[4,14] + x[4,15] + x[4,16] + x[4,17] + x[4,18]
   + x[4,19] + x[4,20] = 0
 zeilensumme_5: - y[5] + x[5,0] + x[5,1] + x[5,2] + x[5,3] + x[5,4]
   + x[5,5] + x[5,6] + x[5,7] + x[5,8] + x[5,9] + x[5,10] + x[5,11]
   + x[5,12] + x[5,13] + x[5,14] + x[5,15] + x[5,16] + x[5,17] + x[5,18]
   + x[5,19] + x[5,20] = 0
 zeilensumme_6: - y[6] + x[6,0] + x[6,1] + x[6,2] + x[6,3] + x[6,4]
   + x[6,5] + x[6,6] + x[6,7] + x[6,8] + x[6,9] + x[6,10] + x[6,11]
   + x[6,12] + x[6,13] + x[6,14] + x[6,15] + x[6,16] + x[6,17] + x[6,18]
   + x[6,19] + x[6,20] = 0
 zeilensumme_7: - y[7] + x[7,0] + x[7,1] + x[7,2] + x[7,3] + x[7,4]
   + x[7,5] + x[7,6] + x[7,7] + x[7,8] + x[7,9] + x[7,10] + x[7,11]
   + x[7,12] + x[7,13] + x[7,14] + x[7,15] + x[7,16] + x[7,17] + x[7,18]
   + x[7,19] + x[7,20] = 0
 zeilensumme_8: - y[8] + x[8,0] + x[8,1] + x[8,2] + x[8,3] + x[8,4]
   + x[8,5] + x[8,6] + x[8,7] + x[8,8] + x[8,9] + x[8,10] + x[8,11]
   + x[8,12] + x[8,13] + x[8,14] + x[8,15] + x[8,16] + x[8,17] + x[8,18]
   + x[8,19] + x[8,20] = 0
 zeilensumme_9: - y[9] + x[9,0] + x[9,1] + x[9,2] + x[9,3] + x[9,4]
   + x[9,5] + x[9,6] + x[9,7] + x[9,8] + x[9,9] + x[9,10] + x[9,11]
   + x[9,12] + x[9,13] + x[9,14] + x[9,15] + x[9,16] + x[9,17] + x[9,18]
   + x[9,19] + x[9,20] = 0
 zeilensumme_10: - y[10] + x[10,0] + x[10,1] + x[10,2] + x[10,3] + x[10,4]
   + x[10,5] + x[10,6] + x[10,7] + x[10,8] + x[10,9] + x[10,10] + x[10,11]
   + x[10,12] + x[10,13] + x[10,14] + x[10,15] + x[10,16] + x[10,17]
   + x[10,18] + x[10,19] + x[10,20] = 0
 zeilensumme_11: - y[11] + x[11,0] + x[11,1] + x[11,2] + x[11,3] + x[11,4]
   + x[11,5] + x[11,6] + x[11,7] + x[11,8] + x[11,9] + x[11,10] + x[11,11]
   + x[11,12] + x[11,13] + x[11,14] + x[11,15] + x[11,16] + x[11,17]
   + x[11,18] + x[11,19] + x[11,20] = 0
 zeilensumme_12: - y[12] + x[12,0] + x[12,1] + x[12,2] + x[12,3] + x[12,4]
   + x[12,5] + x[12,6] + x[12,7] + x[12,8] + x[12,9] + x[12,10] + x[12,11]
   + x[12,12] + x[12,13] + x[12,14] + x[12,15] + x[12,16] + x[12,17]
   + x[12,18] + x[12,19] + x[12,20] = 0
 zeilensumme_13: - y[13] + x[13,0] + x[13,1] + x[13,2] + x[13,3] + x[13,4]
   + x[13,5] + x[13,6] + x[13,7] + x[13,8] + x[13,9] + x[13,10] + x[13,11]
   + x[13,12] + x[13,13] + x[13,14] + x[13,15] + x[13,16] + x[13,17]
   + x[13,18] + x[13,19] + x[13,20] = 0
 zeilensumme_14: - y[14] + x[14,0] + x[14,1] + x[14,2] + x[14,3] + x[14,4]
   + x[14,5] + x[14,6] + x[14,7] + x[14,8] + x[14,9] + x[14,10] + x[14,11]
   + x[14,12] + x[14,13] + x[14,14] + x[14,15] + x[14,16] + x[14,17]
   + x[14,18] + x[14,19] + x[14,20] = 0
 zeilensumme_15: - y[15] + x[15,0] + x[15,1] + x[15,2] + x[15,3] + x[15,4]
   + x[15,5] + x[15,6] + x[15,7] + x[15,8] + x[15,9] + x[15,10] + x[15,11]
   + x[15,12] + x[15,13] + x[15,14] + x[15,15] + x[15,16] + x[15,17]
   + x[15,18] + x[15,19] + x[15,20] = 0
 zeilensumme_16: - y[16] + x[16,0] + x[16,1] + x[16,2] + x[16,3] + x[16,4]
   + x[16,5] + x[16,6] + x[16,7] + x[16,8] + x[16,9] + x[16,10] + x[16,11]
   + x[16,12] + x[16,13] + x[16,14] + x[16,15] + x[16,16] + x[16,17]
   + x[16,18] + x[16,19] + x[16,20] = 0
 zeilensumme_17: - y[17] + x[17,0] + x[17,1] + x[17,2] + x[17,3] + x[17,4]
   + x[17,5] + x[17,6] + x[17,7] + x[17,8] + x[17,9] + x[17,10] + x[17,11]
   + x[17,12] + x[17,13] + x[17,14] + x[17,15] + x[17,16] + x[17,17]
   + x[17,18] + x[17,19] + x[17,20] = 0
 zeilensumme_18: - y[18] + x[18,0] + x[18,1] + x[18,2] + x[18,3] + x[18,4]
   + x[18,5] + x[18,6] + x[18,7] + x[18,8] + x[18,9] + x[18,10] + x[18,11]
   + x[18,12] + x[18,13] + x[18,14] + x[18,15] + x[18,16] + x[18,17]
   + x[18,18] + x[18,19] + x[18,20] = 0
 zeilensumme_19: - y[19] + x[19,0] + x[19,1] + x[19,2] + x[19,3] + x[19,4]
   + x[19,5] + x[19,6] + x[19,7] + x[19,8] + x[19,9] + x[19,10] + x[19,11]
   + x[19,12] + x[19,13] + x[19,14] + x[19,15] + x[19,16] + x[19,17]
   + x[19,18] + x[19,19] + x[19,20] = 0
 zeilensumme_20: - y[20] + x[20,0] + x[20,1] + x[20,2] + x[20,3] + x[20,4]
   + x[20,5] + x[20,6] + x[20,7] + x[20,8] + x[20,9] + x[20,10] + x[20,11]
   + x[20,12] + x[20,13] + x[20,14] + x[20,15] + x[20,16] + x[20,17]
   + x[20,18] + x[20,19] + x[20,20] = 0
 max_travel_dist: 30.7 x[0,1] + 20.6 x[0,2] + 16.5 x[0,3] + 111 x[0,4]
   + 293 x[0,5] + 314 x[0,6] + 441 x[0,7] + 321 x[0,8] + 338 x[0,9]
   + 308 x[0,10] + 239 x[0,11] + 205 x[0,12] + 501 x[0,13] + 643 x[0,14]
   + 35.3 x[0,15] + 429 x[0,16] + 310 x[0,17] + 310 x[0,18] + 205 x[0,19]
   + 330 x[0,20] + 30.7 x[1,0] + 6.5 x[1,2] + 8.3 x[1,3] + 80 x[1,4]
   + 262 x[1,5] + 282 x[1,6] + 427 x[1,7] + 289 x[1,8] + 307 x[1,9]
   + 292 x[1,10] + 225 x[1,11] + 191 x[1,12] + 470 x[1,13] + 612 x[1,14]
   + 61.2 x[1,15] + 398 x[1,16] + 279 x[1,17] + 296 x[1,18] + 191 x[1,19]
   + 316 x[1,20] + 20.6 x[2,0] + 6.5 x[2,1] + 4.4 x[2,3] + 84.9 x[2,4]
   + 267 x[2,5] + 287 x[2,6] + 433 x[2,7] + 294 x[2,8] + 312 x[2,9]
   + 297 x[2,10] + 228 x[2,11] + 194 x[2,12] + 475 x[2,13] + 617 x[2,14]
   + 53.8 x[2,15] + 403 x[2,16] + 284 x[2,17] + 302 x[2,18] + 197 x[2,19]
   + 318 x[2,20] + 16.5 x[3,0] + 8.3 x[3,1] + 4.4 x[3,2] + 103 x[3,4]
   + 285 x[3,5] + 305 x[3,6] + 433 x[3,7] + 312 x[3,8] + 330 x[3,9]
   + 299 x[3,10] + 231 x[3,11] + 197 x[3,12] + 493 x[3,13] + 635 x[3,14]
   + 50.3 x[3,15] + 420 x[3,16] + 301 x[3,17] + 302 x[3,18] + 197 x[3,19]
   + 322 x[3,20] + 111 x[4,0] + 80 x[4,1] + 84.9 x[4,2] + 103 x[4,3]
   + 185 x[4,5] + 205 x[4,6] + 453 x[4,7] + 212 x[4,8] + 229 x[4,9]
   + 214 x[4,10] + 128 x[4,11] + 271 x[4,12] + 393 x[4,13] + 535 x[4,14]
   + 145 x[4,15] + 320 x[4,16] + 201 x[4,17] + 254 x[4,18] + 271 x[4,19]
   + 329 x[4,20] + 293 x[5,0] + 262 x[5,1] + 267 x[5,2] + 285 x[5,3]
   + 185 x[5,4] + 20.8 x[5,6] + 241 x[5,7] + 52.7 x[5,8] + 60.7 x[5,9]
   + 30.5 x[5,10] + 89.6 x[5,11] + 188 x[5,12] + 242 x[5,13] + 384 x[5,14]
   + 328 x[5,15] + 170 x[5,16] + 18 x[5,17] + 103 x[5,18] + 187 x[5,19]
   + 223 x[5,20] + 314 x[6,0] + 282 x[6,1] + 287 x[6,2] + 305 x[6,3]
   + 205 x[6,4] + 20.8 x[6,5] + 229 x[6,7] + 71.7 x[6,8] + 69.5 x[6,9]
   + 11 x[6,10] + 78.4 x[6,11] + 176 x[6,12] + 247 x[6,13] + 389 x[6,14]
   + 305 x[6,15] + 174 x[6,16] + 37 x[6,17] + 79.8 x[6,18] + 175 x[6,19]
   + 210 x[6,20] + 441 x[7,0] + 427 x[7,1] + 433 x[7,2] + 433 x[7,3]
   + 453 x[7,4] + 241 x[7,5] + 229 x[7,6] + 248 x[7,8] + 232 x[7,9]
   + 241 x[7,10] + 268 x[7,11] + 309 x[7,12] + 239 x[7,13] + 412 x[7,14]
   + 503 x[7,15] + 183 x[7,16] + 259 x[7,17] + 203 x[7,18] + 309 x[7,19]
   + 175 x[7,20] + 321 x[8,0] + 289 x[8,1] + 294 x[8,2] + 312 x[8,3]
   + 212 x[8,4] + 52.7 x[8,5] + 71.7 x[8,6] + 248 x[8,7] + 7.8 x[8,9]
   + 82.6 x[8,10] + 175 x[8,11] + 277 x[8,12] + 187 x[8,13] + 329 x[8,14]
   + 354 x[8,15] + 101 x[8,16] + 47.9 x[8,17] + 98.5 x[8,18] + 276 x[8,19]
   + 229 x[8,20] + 338 x[9,0] + 307 x[9,1] + 312 x[9,2] + 330 x[9,3]
   + 229 x[9,4] + 60.7 x[9,5] + 69.5 x[9,6] + 232 x[9,7] + 7.8 x[9,8]
   + 85.1 x[9,10] + 154 x[9,11] + 252 x[9,12] + 185 x[9,13] + 327 x[9,14]
   + 372 x[9,15] + 112 x[9,16] + 53.7 x[9,17] + 83.6 x[9,18] + 251 x[9,19]
   + 214 x[9,20] + 308 x[10,0] + 292 x[10,1] + 297 x[10,2] + 299 x[10,3]
   + 214 x[10,4] + 30.5 x[10,5] + 11 x[10,6] + 241 x[10,7] + 82.6 x[10,8]
   + 85.1 x[10,9] + 80.4 x[10,11] + 178 x[10,12] + 258 x[10,13]
   + 400 x[10,14] + 307 x[10,15] + 185 x[10,16] + 48 x[10,17]
   + 93.8 x[10,18] + 177 x[10,19] + 221 x[10,20] + 239 x[11,0]
   + 225 x[11,1] + 228 x[11,2] + 231 x[11,3] + 128 x[11,4] + 89.6 x[11,5]
   + 78.4 x[11,6] + 268 x[11,7] + 175 x[11,8] + 154 x[11,9] + 80.4 x[11,10]
   + 111 x[11,12] + 356 x[11,13] + 498 x[11,14] + 240 x[11,15]
   + 284 x[11,16] + 107 x[11,17] + 83.2 x[11,18] + 110 x[11,19]
   + 140 x[11,20] + 205 x[12,0] + 191 x[12,1] + 194 x[12,2] + 197 x[12,3]
   + 271 x[12,4] + 188 x[12,5] + 176 x[12,6] + 309 x[12,7] + 277 x[12,8]
   + 252 x[12,9] + 178 x[12,10] + 111 x[12,11] + 458 x[12,13]
   + 600 x[12,14] + 205 x[12,15] + 386 x[12,16] + 205 x[12,17]
   + 181 x[12,18] + 3.6 x[12,19] + 136 x[12,20] + 501 x[13,0] + 470 x[13,1]
   + 475 x[13,2] + 493 x[13,3] + 393 x[13,4] + 242 x[13,5] + 247 x[13,6]
   + 239 x[13,7] + 187 x[13,8] + 185 x[13,9] + 258 x[13,10] + 356 x[13,11]
   + 458 x[13,12] + 188 x[13,14] + 534 x[13,15] + 73.6 x[13,16]
   + 236 x[13,17] + 258 x[13,18] + 456 x[13,19] + 389 x[13,20]
   + 643 x[14,0] + 612 x[14,1] + 617 x[14,2] + 635 x[14,3] + 535 x[14,4]
   + 384 x[14,5] + 389 x[14,6] + 412 x[14,7] + 329 x[14,8] + 327 x[14,9]
   + 400 x[14,10] + 498 x[14,11] + 600 x[14,12] + 188 x[14,13]
   + 682 x[14,15] + 259 x[14,16] + 384 x[14,17] + 406 x[14,18]
   + 604 x[14,19] + 536 x[14,20] + 35.3 x[15,0] + 61.2 x[15,1]
   + 53.8 x[15,2] + 50.3 x[15,3] + 145 x[15,4] + 328 x[15,5] + 305 x[15,6]
   + 503 x[15,7] + 354 x[15,8] + 372 x[15,9] + 307 x[15,10] + 240 x[15,11]
   + 205 x[15,12] + 534 x[15,13] + 682 x[15,14] + 463 x[15,16]
   + 344 x[15,17] + 310 x[15,18] + 205 x[15,19] + 329 x[15,20]
   + 429 x[16,0] + 398 x[16,1] + 403 x[16,2] + 420 x[16,3] + 320 x[16,4]
   + 170 x[16,5] + 174 x[16,6] + 183 x[16,7] + 101 x[16,8] + 112 x[16,9]
   + 185 x[16,10] + 284 x[16,11] + 386 x[16,12] + 73.6 x[16,13]
   + 259 x[16,14] + 463 x[16,15] + 164 x[16,17] + 186 x[16,18]
   + 383 x[16,19] + 316 x[16,20] + 310 x[17,0] + 279 x[17,1] + 284 x[17,2]
   + 301 x[17,3] + 201 x[17,4] + 18 x[17,5] + 37 x[17,6] + 259 x[17,7]
   + 47.9 x[17,8] + 53.7 x[17,9] + 48 x[17,10] + 107 x[17,11]
   + 205 x[17,12] + 236 x[17,13] + 384 x[17,14] + 344 x[17,15]
   + 164 x[17,16] + 121 x[17,18] + 204 x[17,19] + 240 x[17,20]
   + 310 x[18,0] + 296 x[18,1] + 302 x[18,2] + 302 x[18,3] + 254 x[18,4]
   + 103 x[18,5] + 79.8 x[18,6] + 203 x[18,7] + 98.5 x[18,8] + 83.6 x[18,9]
   + 93.8 x[18,10] + 83.2 x[18,11] + 181 x[18,12] + 258 x[18,13]
   + 406 x[18,14] + 310 x[18,15] + 186 x[18,16] + 121 x[18,17]
   + 179 x[18,19] + 184 x[18,20] + 205 x[19,0] + 191 x[19,1] + 197 x[19,2]
   + 197 x[19,3] + 271 x[19,4] + 187 x[19,5] + 175 x[19,6] + 309 x[19,7]
   + 276 x[19,8] + 251 x[19,9] + 177 x[19,10] + 110 x[19,11] + 3.6 x[19,12]
   + 456 x[19,13] + 604 x[19,14] + 205 x[19,15] + 383 x[19,16]
   + 204 x[19,17] + 179 x[19,18] + 135 x[19,20] + 330 x[20,0] + 316 x[20,1]
   + 318 x[20,2] + 322 x[20,3] + 329 x[20,4] + 223 x[20,5] + 210 x[20,6]
   + 175 x[20,7] + 229 x[20,8] + 214 x[20,9] + 221 x[20,10] + 140 x[20,11]
   + 136 x[20,12] + 389 x[20,13] + 536 x[20,14] + 329 x[20,15]
   + 316 x[20,16] + 240 x[20,17] + 184 x[20,18] + 135 x[20,19] <= 500
 R43: x[0,0] = 0
 R44: x[1,1] = 0
 R45: x[2,2] = 0
 R46: x[3,3] = 0
 R47: x[4,4] = 0
 R48: x[5,5] = 0
 R49: x[6,6] = 0
 R50: x[7,7] = 0
 R51: x[8,8] = 0
 R52: x[9,9] = 0
 R53: x[10,10] = 0
 R54: x[11,11] = 0
 R55: x[12,12] = 0
 R56: x[13,13] = 0
 R57: x[14,14] = 0
 R58: x[15,15] = 0
 R59: x[16,16] = 0
 R60: x[17,17] = 0
 R61: x[18,18] = 0
 R62: x[19,19] = 0
 R63: x[20,20] = 0
Bounds
 y[0] <= 1
 y[1] <= 1
 y[2] <= 1
 y[3] <= 1
 y[4] <= 1
 y[5] <= 1
 y[6] <= 1
 y[7] <= 1
 y[8] <= 1
 y[9] <= 1
 y[10] <= 1
 y[11] <= 1
 y[12] <= 1
 y[13] <= 1
 y[14] <= 1
 y[15] <= 1
 y[16] <= 1
 y[17] <= 1
 y[18] <= 1
 y[19] <= 1
 y[20] <= 1
 x[0,0] <= 1
 x[0,1] <= 1
 x[0,2] <= 1
 x[0,3] <= 1
 x[0,4] <= 1
 x[0,5] <= 1
 x[0,6] <= 1
 x[0,7] <= 1
 x[0,8] <= 1
 x[0,9] <= 1
 x[0,10] <= 1
 x[0,11] <= 1
 x[0,12] <= 1
 x[0,13] <= 1
 x[0,14] <= 1
 x[0,15] <= 1
 x[0,16] <= 1
 x[0,17] <= 1
 x[0,18] <= 1
 x[0,19] <= 1
 x[0,20] <= 1
 x[1,0] <= 1
 x[1,1] <= 1
 x[1,2] <= 1
 x[1,3] <= 1
 x[1,4] <= 1
 x[1,5] <= 1
 x[1,6] <= 1
 x[1,7] <= 1
 x[1,8] <= 1
 x[1,9] <= 1
 x[1,10] <= 1
 x[1,11] <= 1
 x[1,12] <= 1
 x[1,13] <= 1
 x[1,14] <= 1
 x[1,15] <= 1
 x[1,16] <= 1
 x[1,17] <= 1
 x[1,18] <= 1
 x[1,19] <= 1
 x[1,20] <= 1
 x[2,0] <= 1
 x[2,1] <= 1
 x[2,2] <= 1
 x[2,3] <= 1
 x[2,4] <= 1
 x[2,5] <= 1
 x[2,6] <= 1
 x[2,7] <= 1
 x[2,8] <= 1
 x[2,9] <= 1
 x[2,10] <= 1
 x[2,11] <= 1
 x[2,12] <= 1
 x[2,13] <= 1
 x[2,14] <= 1
 x[2,15] <= 1
 x[2,16] <= 1
 x[2,17] <= 1
 x[2,18] <= 1
 x[2,19] <= 1
 x[2,20] <= 1
 x[3,0] <= 1
 x[3,1] <= 1
 x[3,2] <= 1
 x[3,3] <= 1
 x[3,4] <= 1
 x[3,5] <= 1
 x[3,6] <= 1
 x[3,7] <= 1
 x[3,8] <= 1
 x[3,9] <= 1
 x[3,10] <= 1
 x[3,11] <= 1
 x[3,12] <= 1
 x[3,13] <= 1
 x[3,14] <= 1
 x[3,15] <= 1
 x[3,16] <= 1
 x[3,17] <= 1
 x[3,18] <= 1
 x[3,19] <= 1
 x[3,20] <= 1
 x[4,0] <= 1
 x[4,1] <= 1
 x[4,2] <= 1
 x[4,3] <= 1
 x[4,4] <= 1
 x[4,5] <= 1
 x[4,6] <= 1
 x[4,7] <= 1
 x[4,8] <= 1
 x[4,9] <= 1
 x[4,10] <= 1
 x[4,11] <= 1
 x[4,12] <= 1
 x[4,13] <= 1
 x[4,14] <= 1
 x[4,15] <= 1
 x[4,16] <= 1
 x[4,17] <= 1
 x[4,18] <= 1
 x[4,19] <= 1
 x[4,20] <= 1
 x[5,0] <= 1
 x[5,1] <= 1
 x[5,2] <= 1
 x[5,3] <= 1
 x[5,4] <= 1
 x[5,5] <= 1
 x[5,6] <= 1
 x[5,7] <= 1
 x[5,8] <= 1
 x[5,9] <= 1
 x[5,10] <= 1
 x[5,11] <= 1
 x[5,12] <= 1
 x[5,13] <= 1
 x[5,14] <= 1
 x[5,15] <= 1
 x[5,16] <= 1
 x[5,17] <= 1
 x[5,18] <= 1
 x[5,19] <= 1
 x[5,20] <= 1
 x[6,0] <= 1
 x[6,1] <= 1
 x[6,2] <= 1
 x[6,3] <= 1
 x[6,4] <= 1
 x[6,5] <= 1
 x[6,6] <= 1
 x[6,7] <= 1
 x[6,8] <= 1
 x[6,9] <= 1
 x[6,10] <= 1
 x[6,11] <= 1
 x[6,12] <= 1
 x[6,13] <= 1
 x[6,14] <= 1
 x[6,15] <= 1
 x[6,16] <= 1
 x[6,17] <= 1
 x[6,18] <= 1
 x[6,19] <= 1
 x[6,20] <= 1
 x[7,0] <= 1
 x[7,1] <= 1
 x[7,2] <= 1
 x[7,3] <= 1
 x[7,4] <= 1
 x[7,5] <= 1
 x[7,6] <= 1
 x[7,7] <= 1
 x[7,8] <= 1
 x[7,9] <= 1
 x[7,10] <= 1
 x[7,11] <= 1
 x[7,12] <= 1
 x[7,13] <= 1
 x[7,14] <= 1
 x[7,15] <= 1
 x[7,16] <= 1
 x[7,17] <= 1
 x[7,18] <= 1
 x[7,19] <= 1
 x[7,20] <= 1
 x[8,0] <= 1
 x[8,1] <= 1
 x[8,2] <= 1
 x[8,3] <= 1
 x[8,4] <= 1
 x[8,5] <= 1
 x[8,6] <= 1
 x[8,7] <= 1
 x[8,8] <= 1
 x[8,9] <= 1
 x[8,10] <= 1
 x[8,11] <= 1
 x[8,12] <= 1
 x[8,13] <= 1
 x[8,14] <= 1
 x[8,15] <= 1
 x[8,16] <= 1
 x[8,17] <= 1
 x[8,18] <= 1
 x[8,19] <= 1
 x[8,20] <= 1
 x[9,0] <= 1
 x[9,1] <= 1
 x[9,2] <= 1
 x[9,3] <= 1
 x[9,4] <= 1
 x[9,5] <= 1
 x[9,6] <= 1
 x[9,7] <= 1
 x[9,8] <= 1
 x[9,9] <= 1
 x[9,10] <= 1
 x[9,11] <= 1
 x[9,12] <= 1
 x[9,13] <= 1
 x[9,14] <= 1
 x[9,15] <= 1
 x[9,16] <= 1
 x[9,17] <= 1
 x[9,18] <= 1
 x[9,19] <= 1
 x[9,20] <= 1
 x[10,0] <= 1
 x[10,1] <= 1
 x[10,2] <= 1
 x[10,3] <= 1
 x[10,4] <= 1
 x[10,5] <= 1
 x[10,6] <= 1
 x[10,7] <= 1
 x[10,8] <= 1
 x[10,9] <= 1
 x[10,10] <= 1
 x[10,11] <= 1
 x[10,12] <= 1
 x[10,13] <= 1
 x[10,14] <= 1
 x[10,15] <= 1
 x[10,16] <= 1
 x[10,17] <= 1
 x[10,18] <= 1
 x[10,19] <= 1
 x[10,20] <= 1
 x[11,0] <= 1
 x[11,1] <= 1
 x[11,2] <= 1
 x[11,3] <= 1
 x[11,4] <= 1
 x[11,5] <= 1
 x[11,6] <= 1
 x[11,7] <= 1
 x[11,8] <= 1
 x[11,9] <= 1
 x[11,10] <= 1
 x[11,11] <= 1
 x[11,12] <= 1
 x[11,13] <= 1
 x[11,14] <= 1
 x[11,15] <= 1
 x[11,16] <= 1
 x[11,17] <= 1
 x[11,18] <= 1
 x[11,19] <= 1
 x[11,20] <= 1
 x[12,0] <= 1
 x[12,1] <= 1
 x[12,2] <= 1
 x[12,3] <= 1
 x[12,4] <= 1
 x[12,5] <= 1
 x[12,6] <= 1
 x[12,7] <= 1
 x[12,8] <= 1
 x[12,9] <= 1
 x[12,10] <= 1
 x[12,11] <= 1
 x[12,12] <= 1
 x[12,13] <= 1
 x[12,14] <= 1
 x[12,15] <= 1
 x[12,16] <= 1
 x[12,17] <= 1
 x[12,18] <= 1
 x[12,19] <= 1
 x[12,20] <= 1
 x[13,0] <= 1
 x[13,1] <= 1
 x[13,2] <= 1
 x[13,3] <= 1
 x[13,4] <= 1
 x[13,5] <= 1
 x[13,6] <= 1
 x[13,7] <= 1
 x[13,8] <= 1
 x[13,9] <= 1
 x[13,10] <= 1
 x[13,11] <= 1
 x[13,12] <= 1
 x[13,13] <= 1
 x[13,14] <= 1
 x[13,15] <= 1
 x[13,16] <= 1
 x[13,17] <= 1
 x[13,18] <= 1
 x[13,19] <= 1
 x[13,20] <= 1
 x[14,0] <= 1
 x[14,1] <= 1
 x[14,2] <= 1
 x[14,3] <= 1
 x[14,4] <= 1
 x[14,5] <= 1
 x[14,6] <= 1
 x[14,7] <= 1
 x[14,8] <= 1
 x[14,9] <= 1
 x[14,10] <= 1
 x[14,11] <= 1
 x[14,12] <= 1
 x[14,13] <= 1
 x[14,14] <= 1
 x[14,15] <= 1
 x[14,16] <= 1
 x[14,17] <= 1
 x[14,18] <= 1
 x[14,19] <= 1
 x[14,20] <= 1
 x[15,0] <= 1
 x[15,1] <= 1
 x[15,2] <= 1
 x[15,3] <= 1
 x[15,4] <= 1
 x[15,5] <= 1
 x[15,6] <= 1
 x[15,7] <= 1
 x[15,8] <= 1
 x[15,9] <= 1
 x[15,10] <= 1
 x[15,11] <= 1
 x[15,12] <= 1
 x[15,13] <= 1
 x[15,14] <= 1
 x[15,15] <= 1
 x[15,16] <= 1
 x[15,17] <= 1
 x[15,18] <= 1
 x[15,19] <= 1
 x[15,20] <= 1
 x[16,0] <= 1
 x[16,1] <= 1
 x[16,2] <= 1
 x[16,3] <= 1
 x[16,4] <= 1
 x[16,5] <= 1
 x[16,6] <= 1
 x[16,7] <= 1
 x[16,8] <= 1
 x[16,9] <= 1
 x[16,10] <= 1
 x[16,11] <= 1
 x[16,12] <= 1
 x[16,13] <= 1
 x[16,14] <= 1
 x[16,15] <= 1
 x[16,16] <= 1
 x[16,17] <= 1
 x[16,18] <= 1
 x[16,19] <= 1
 x[16,20] <= 1
 x[17,0] <= 1
 x[17,1] <= 1
 x[17,2] <= 1
 x[17,3] <= 1
 x[17,4] <= 1
 x[17,5] <= 1
 x[17,6] <= 1
 x[17,7] <= 1
 x[17,8] <= 1
 x[17,9] <= 1
 x[17,10] <= 1
 x[17,11] <= 1
 x[17,12] <= 1
 x[17,13] <= 1
 x[17,14] <= 1
 x[17,15] <= 1
 x[17,16] <= 1
 x[17,17] <= 1
 x[17,18] <= 1
 x[17,19] <= 1
 x[17,20] <= 1
 x[18,0] <= 1
 x[18,1] <= 1
 x[18,2] <= 1
 x[18,3] <= 1
 x[18,4] <= 1
 x[18,5] <= 1
 x[18,6] <= 1
 x[18,7] <= 1
 x[18,8] <= 1
 x[18,9] <= 1
 x[18,10] <= 1
 x[18,11] <= 1
 x[18,12] <= 1
 x[18,13] <= 1
 x[18,14] <= 1
 x[18,15] <= 1
 x[18,16] <= 1
 x[18,17] <= 1
 x[18,18] <= 1
 x[18,19] <= 1
 x[18,20] <= 1
 x[19,0] <= 1
 x[19,1] <= 1
 x[19,2] <= 1
 x[19,3] <= 1
 x[19,4] <= 1
 x[19,5] <= 1
 x[19,6] <= 1
 x[19,7] <= 1
 x[19,8] <= 1
 x[19,9] <= 1
 x[19,10] <= 1
 x[19,11] <= 1
 x[19,12] <= 1
 x[19,13] <= 1
 x[19,14] <= 1
 x[19,15] <= 1
 x[19,16] <= 1
 x[19,17] <= 1
 x[19,18] <= 1
 x[19,19] <= 1
 x[19,20] <= 1
 x[20,0] <= 1
 x[20,1] <= 1
 x[20,2] <= 1
 x[20,3] <= 1
 x[20,4] <= 1
 x[20,5] <= 1
 x[20,6] <= 1
 x[20,7] <= 1
 x[20,8] <= 1
 x[20,9] <= 1
 x[20,10] <= 1
 x[20,11] <= 1
 x[20,12] <= 1
 x[20,13] <= 1
 x[20,14] <= 1
 x[20,15] <= 1
 x[20,16] <= 1
 x[20,17] <= 1
 x[20,18] <= 1
 x[20,19] <= 1
 x[20,20] <= 1
End
