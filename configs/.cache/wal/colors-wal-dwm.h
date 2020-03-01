static const char norm_fg[] = "#ceccc9";
static const char norm_bg[] = "#101212";
static const char norm_border[] = "#908e8c";

static const char sel_fg[] = "#ceccc9";
static const char sel_bg[] = "#6D746F";
static const char sel_border[] = "#ceccc9";

static const char urg_fg[] = "#ceccc9";
static const char urg_bg[] = "#5B6562";
static const char urg_border[] = "#5B6562";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
