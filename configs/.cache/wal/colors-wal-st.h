const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#101212", /* black   */
  [1] = "#5B6562", /* red     */
  [2] = "#6D746F", /* green   */
  [3] = "#7C8079", /* yellow  */
  [4] = "#86857B", /* blue    */
  [5] = "#7A8583", /* magenta */
  [6] = "#8F938E", /* cyan    */
  [7] = "#ceccc9", /* white   */

  /* 8 bright colors */
  [8]  = "#908e8c",  /* black   */
  [9]  = "#5B6562",  /* red     */
  [10] = "#6D746F", /* green   */
  [11] = "#7C8079", /* yellow  */
  [12] = "#86857B", /* blue    */
  [13] = "#7A8583", /* magenta */
  [14] = "#8F938E", /* cyan    */
  [15] = "#ceccc9", /* white   */

  /* special colors */
  [256] = "#101212", /* background */
  [257] = "#ceccc9", /* foreground */
  [258] = "#ceccc9",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
