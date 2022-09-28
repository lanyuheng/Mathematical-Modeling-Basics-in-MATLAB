| Title | Mathematical Modeling Basics in MATLAB |
| ----- | -------------------------------------- |
| Time  | Jun. 2018 - Jul. 2018                  |
| From  | Mathematical Software and Experiment   |

digital image recognition

+ forall
  + First use imread to read the picture, extract the first layer and set it as A, then call the cutafter function to get a separate grayscale image for each number
  + Then call the g_process function to get the binary image of the image, that is, the part with the image is 1, and the part without the image is 0. The above two parts are the part of the processed image, and then start to judge the number of the image
  + Judging the number part is mainly judged by the characteristics of the number, from 1 to 10, the most characteristic is the number 1, that is, the width of the line on the upper bottom is greater than 2, so first call the for1 function
  + Then the 2 in the remaining numbers can also be confirmed in the same way, that is, the line below 2 occupies at least 0.7 of the entire image of 2, and the function for2 is called.
  + Then there is a central axis in the remaining number 4, which goes straight from top to bottom, so as long as it is judged that there is such a central axis that accounts for more than 0.7 of the overall height of the image, it can be judged as 4, and 1 has been excluded before, call function different5and7except4
  + Then judge the numbers 5 and 7, notice that there is a line at the top of 5 and 7, so you can judge whether it is one of 5 and 7 in the same way as judging 2, call the function for5and7 but there is no way to judge whether it is 5 or not Or 7, so continue to call different5and7except4, and judge that the length of the central axis of 5 from bottom to top is much less than 0.2, and else is 7
  + Finally, let's judge 0, 3, 6, 8, 9. We notice that if we take the upper third to draw the line, the lower third is to draw the line, and then the central axis passes through from top to bottom, and 0 is up and down. 2 intersections each, 2 middle intersections, 3 upper and lower 1 intersection, 3 middle intersections, 6 upper 1 lower two middle 3, 8 upper and lower two middle 3, 9 upper two lower 1 middle 3 , for the convenience of judgment, the harmonic average of the upper and lower intersections can be added to the sum of the number of intermediate intersections to determine which number it is, and the function lastfor0and3and6and8and9 can be called.
  + Finally output answer to get the result of identifying the image
    +cutafter
  + First find the sum of each column of the image
  + Then use the difference function diff, use it twice, you can get the difference of each column compared to the previous column, and then use the for statement, if a column is 0 in the front and not zero in the middle, then it is the first row, If a column is followed by zero, the middle is not zero, and the previous column is zero, it is the last row, then the first and last rows of each number are stored, and finally each number is stored in the variable g in a layer-by-layer manner, output
+ g_process
  + First subtract 255 from all values, so that the values of the blank parts become 0 values, then call the im2bw function to turn the image into a binary image, and output
+ for1
  + First set the upper minimum value to 460, the lower 1 maximum value to 0, the left minimum value to 819, and the right maximum value to 0, then double loop, first determine whether it is a point on the image, then from top to bottom, from left to left Right, update the coordinates in turn, and finally get the more accurate up, down, left, and right coordinates of the image, then subtract the top from the bottom, and subtract the left from the right to get the height and width of the image, and then compare the height to the top width. If the obtained value is greater than 2, it is 1. If If not, continue to judge
+ for2
  + The method of obtaining the upper, lower, left and right coordinates is the same as above, and then the bottom line of the image is wider than the upper square. If the ratio is greater than 0.7, it is judged as 2
    +different5and7except4
  + The method of obtaining the upper, lower, left and right coordinates is the same as above, then obtain the coordinates of the bottom of the image and divide by 2, and then judge from this coordinate through the while statement, from the lower network, get the uppermost coordinate of the central axis, and subtract these two coordinates. , and then compared with the upper and lower coordinates of the image itself, if the ratio is greater than 0.8, it means 4
    +for5and7
  + Judging by judging that the line above accounts for more than half of the entire graph
+ lastfor0and3and6and8and9
  + Determine which type it belongs to by judging the number of intersections of the upper and lower lines and the number of the central axis
