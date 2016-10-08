.class public final Lcom/viewpagerindicator/l;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final CirclePageIndicator:[I

.field public static final CirclePageIndicator_android_background:I = 0x1

.field public static final CirclePageIndicator_android_orientation:I = 0x0

.field public static final CirclePageIndicator_centered:I = 0x2

.field public static final CirclePageIndicator_fillColor:I = 0x4

.field public static final CirclePageIndicator_pageColor:I = 0x5

.field public static final CirclePageIndicator_radius:I = 0x6

.field public static final CirclePageIndicator_snap:I = 0x7

.field public static final CirclePageIndicator_strokeColor:I = 0x8

.field public static final CirclePageIndicator_strokeWidth:I = 0x3

.field public static final LinePageIndicator:[I

.field public static final LinePageIndicator_android_background:I = 0x0

.field public static final LinePageIndicator_centered:I = 0x1

.field public static final LinePageIndicator_gapWidth:I = 0x6

.field public static final LinePageIndicator_lineWidth:I = 0x5

.field public static final LinePageIndicator_selectedColor:I = 0x2

.field public static final LinePageIndicator_strokeWidth:I = 0x3

.field public static final LinePageIndicator_unselectedColor:I = 0x4

.field public static final TabPageIndicator:[I

.field public static final TabPageIndicator_bottom_line_color:I = 0x1

.field public static final TabPageIndicator_container_background:I = 0x4

.field public static final TabPageIndicator_container_padding_left:I = 0x2

.field public static final TabPageIndicator_container_padding_right:I = 0x3

.field public static final TabPageIndicator_text_horizontal_margin:I = 0x0

.field public static final TitlePageIndicator:[I

.field public static final TitlePageIndicator_android_background:I = 0x2

.field public static final TitlePageIndicator_android_textColor:I = 0x1

.field public static final TitlePageIndicator_android_textSize:I = 0x0

.field public static final TitlePageIndicator_clipPadding:I = 0x4

.field public static final TitlePageIndicator_footerColor:I = 0x5

.field public static final TitlePageIndicator_footerIndicatorHeight:I = 0x8

.field public static final TitlePageIndicator_footerIndicatorStyle:I = 0x7

.field public static final TitlePageIndicator_footerIndicatorUnderlinePadding:I = 0x9

.field public static final TitlePageIndicator_footerLineHeight:I = 0x6

.field public static final TitlePageIndicator_footerPadding:I = 0xa

.field public static final TitlePageIndicator_linePosition:I = 0xb

.field public static final TitlePageIndicator_selectedBold:I = 0xc

.field public static final TitlePageIndicator_selectedColor:I = 0x3

.field public static final TitlePageIndicator_titlePadding:I = 0xd

.field public static final TitlePageIndicator_topPadding:I = 0xe

.field public static final UnderlinePageIndicator:[I

.field public static final UnderlinePageIndicator_android_background:I = 0x0

.field public static final UnderlinePageIndicator_fadeDelay:I = 0x3

.field public static final UnderlinePageIndicator_fadeLength:I = 0x4

.field public static final UnderlinePageIndicator_fades:I = 0x2

.field public static final UnderlinePageIndicator_selectedColor:I = 0x1

.field public static final ViewPagerIndicator:[I

.field public static final ViewPagerIndicator_vpiCirclePageIndicatorStyle:I = 0x0

.field public static final ViewPagerIndicator_vpiIconPageIndicatorStyle:I = 0x1

.field public static final ViewPagerIndicator_vpiLinePageIndicatorStyle:I = 0x2

.field public static final ViewPagerIndicator_vpiTabPageIndicatorStyle:I = 0x4

.field public static final ViewPagerIndicator_vpiTitlePageIndicatorStyle:I = 0x3

.field public static final ViewPagerIndicator_vpiUnderlinePageIndicatorStyle:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 124
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viewpagerindicator/l;->CirclePageIndicator:[I

    .line 134
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/viewpagerindicator/l;->LinePageIndicator:[I

    .line 142
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/viewpagerindicator/l;->TabPageIndicator:[I

    .line 148
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/viewpagerindicator/l;->TitlePageIndicator:[I

    .line 164
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/viewpagerindicator/l;->UnderlinePageIndicator:[I

    .line 170
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/viewpagerindicator/l;->ViewPagerIndicator:[I

    return-void

    .line 124
    :array_0
    .array-data 4
        0x10100c4
        0x10100d4
        0x7f01013e
        0x7f01015b
        0x7f010182
        0x7f010183
        0x7f010184
        0x7f010185
        0x7f010186
    .end array-data

    .line 134
    :array_1
    .array-data 4
        0x10100d4
        0x7f01013e
        0x7f010157
        0x7f01015b
        0x7f010164
        0x7f0101aa
        0x7f0101ab
    .end array-data

    .line 142
    :array_2
    .array-data 4
        0x7f0101ea
        0x7f0101eb
        0x7f0101ec
        0x7f0101ed
        0x7f0101ee
    .end array-data

    .line 148
    :array_3
    .array-data 4
        0x1010095
        0x1010098
        0x10100d4
        0x7f010157
        0x7f0101f6
        0x7f0101f7
        0x7f0101f8
        0x7f0101f9
        0x7f0101fa
        0x7f0101fb
        0x7f0101fc
        0x7f0101fd
        0x7f0101fe
        0x7f0101ff
        0x7f010200
    .end array-data

    .line 164
    :array_4
    .array-data 4
        0x10100d4
        0x7f010157
        0x7f010201
        0x7f010202
        0x7f010203
    .end array-data

    .line 170
    :array_5
    .array-data 4
        0x7f010206
        0x7f010207
        0x7f010208
        0x7f010209
        0x7f01020a
        0x7f01020b
    .end array-data
.end method
