.class public final Lcom/xueqiu/android/stockchart/f/a;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static a:Ljava/text/SimpleDateFormat;

.field public static b:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/xueqiu/android/stockchart/f/a;->a:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xueqiu/android/stockchart/f/a;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Landroid/content/Context;F)F
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 244
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/xueqiu/android/stockchart/f/b;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-object v0

    .line 1114
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 205
    :goto_1
    if-eqz v0, :cond_3

    .line 206
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, "\uffe5"

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u53ef\u8f6c\u503a"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1116
    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "SH11"

    aput-object v0, v3, v2

    const-string v0, "SH12"

    aput-object v0, v3, v1

    move v0, v2

    .line 1117
    :goto_2
    if-ge v0, v5, :cond_1a

    aget-object v4, v3, v0

    .line 1118
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 1120
    goto :goto_1

    .line 1117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1185
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 207
    :goto_3
    if-eqz v0, :cond_6

    .line 208
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, "\uffe5"

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u57fa\u91d1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_4
    new-array v3, v6, [Ljava/lang/String;

    const-string v0, "SH500"

    aput-object v0, v3, v2

    const-string v0, "SH502"

    aput-object v0, v3, v1

    const-string v0, "SH510"

    aput-object v0, v3, v5

    const-string v0, "SH511"

    aput-object v0, v3, v7

    const/4 v0, 0x4

    const-string v4, "SH513"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "SZ15"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "SZ18"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "SZ16"

    aput-object v4, v3, v0

    move v0, v2

    .line 1188
    :goto_4
    if-ge v0, v6, :cond_19

    aget-object v4, v3, v0

    .line 1189
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    .line 1191
    goto :goto_3

    .line 1188
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 209
    :cond_6
    const-string v0, "SH\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SZ\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 210
    :cond_7
    const-string v0, "SZ200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 211
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, "HK$"

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u6df1B"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :cond_8
    const-string v0, "SH900"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 213
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, "$"

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u6caaB"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_9
    const-string v0, "SH00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "SZ399"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    :cond_a
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, ""

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u6307\u6570"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_b
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, "\uffe5"

    const-string v2, "\u6caa\u6df1"

    const-string v3, "A\u80a1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_c
    const-string v0, "OC\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 220
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, "\uffe5"

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u65b0\u4e09\u677f"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_d
    const-string v0, "CSI\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 222
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, ""

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u6307\u6570"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_e
    const-string v0, "MF\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 224
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, ""

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u57fa\u91d1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_f
    const-string v0, "F\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 226
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, ""

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u57fa\u91d1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_10
    invoke-static {p0}, Lcom/xueqiu/android/stockchart/f/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 228
    new-instance v1, Lcom/xueqiu/android/stockchart/f/b;

    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\uffe5"

    :goto_5
    const-string v2, "\u6e2f\u80a1"

    const-string v3, "\u6e2f\u80a1"

    invoke-direct {v1, v0, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_11
    const-string v0, "HK$"

    goto :goto_5

    .line 2150
    :cond_12
    const/16 v0, 0xa

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "HKHSI"

    aput-object v0, v3, v2

    const-string v0, "HKHSF"

    aput-object v0, v3, v1

    const-string v0, "HKHSU"

    aput-object v0, v3, v5

    const-string v0, "HKHSP"

    aput-object v0, v3, v7

    const/4 v0, 0x4

    const-string v4, "HKHSC"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "HKVHSI"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "HKHSCEI"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "HKHSCCI"

    aput-object v4, v3, v0

    const-string v0, "HKGEM"

    aput-object v0, v3, v6

    const/16 v0, 0x9

    const-string v4, "HKHKL"

    aput-object v4, v3, v0

    move v0, v2

    .line 2151
    :goto_6
    const/16 v4, 0xa

    if-ge v0, v4, :cond_18

    aget-object v4, v3, v0

    .line 2152
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v0, v1

    .line 229
    :goto_7
    if-eqz v0, :cond_14

    .line 230
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, ""

    const-string v2, "\u6e2f\u80a1"

    const-string v3, "\u6307\u6570"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2151
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2168
    :cond_14
    new-array v3, v6, [Ljava/lang/String;

    const-string v0, "DJI30"

    aput-object v0, v3, v2

    const-string v0, "NASDAQ"

    aput-object v0, v3, v1

    const-string v0, "SP500"

    aput-object v0, v3, v5

    const-string v0, "ICS30"

    aput-object v0, v3, v7

    const/4 v0, 0x4

    const-string v4, "SLR10"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "TMT20"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "HCP10"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "EDU10"

    aput-object v4, v3, v0

    move v0, v2

    .line 2169
    :goto_8
    if-ge v0, v6, :cond_17

    aget-object v4, v3, v0

    .line 2170
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 231
    :goto_9
    if-eqz v1, :cond_16

    .line 232
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, ""

    const-string v2, "\u7f8e\u80a1"

    const-string v3, "\u6307\u6570"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2169
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 234
    :cond_16
    new-instance v0, Lcom/xueqiu/android/stockchart/f/b;

    const-string v1, "$"

    const-string v2, "\u7f8e\u80a1"

    const-string v3, "\u7f8e\u80a1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/stockchart/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_9

    :cond_18
    move v0, v2

    goto :goto_7

    :cond_19
    move v0, v2

    goto/16 :goto_3

    :cond_1a
    move v0, v2

    goto/16 :goto_1
.end method

.method public static a(D)Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    const-wide v0, 0x40c3880000000000L    # 10000.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 306
    double-to-int v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 311
    :goto_0
    return-object v0

    .line 308
    :cond_0
    invoke-static {p0, p1}, Lcom/xueqiu/android/stockchart/f/a;->b(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(DD)Ljava/lang/String;
    .locals 4

    .prologue
    .line 425
    const/4 v0, 0x2

    .line 426
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-eqz v1, :cond_0

    .line 427
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 437
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 432
    :cond_1
    const-string v1, "0."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 317
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "\u4e07"

    aput-object v3, v1, v2

    const-string v2, "\u4ebf"

    aput-object v2, v1, v4

    .line 319
    :goto_0
    const/16 v2, 0x2710

    if-le p0, v2, :cond_0

    if-ge v0, v4, :cond_0

    .line 320
    div-int/lit16 p0, p0, 0x2710

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 358
    const-string v0, "^\\d+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 360
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 361
    sget-object v0, Lcom/xueqiu/android/stockchart/f/a;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 363
    :cond_0
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v8

    const-string v1, "Jan"

    aput-object v1, v0, v6

    const-string v1, "Feb"

    aput-object v1, v0, v7

    const-string v1, "Mar"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const-string v1, "May"

    aput-object v1, v0, v10

    const/4 v1, 0x6

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Dec"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 364
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 365
    array-length v1, v2

    const/4 v3, 0x6

    if-ge v1, v3, :cond_1

    .line 366
    const-string v0, ""

    .line 397
    :goto_0
    return-object v0

    .line 368
    :cond_1
    aget-object v1, v2, v6

    .line 369
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 370
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_1
    aget-object v1, v2, v9

    .line 373
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 375
    const-string v1, "%s-%s-%s"

    new-array v4, v9, [Ljava/lang/Object;

    aget-object v5, v2, v10

    aput-object v5, v4, v8

    aput-object v0, v4, v6

    aget-object v5, v2, v7

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v4, "YYYY-MM"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 378
    const-string v1, "%s-%s"

    new-array v3, v7, [Ljava/lang/Object;

    aget-object v2, v2, v10

    aput-object v2, v3, v8

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 381
    :cond_3
    const-string v4, "hh:mm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 382
    const-string v0, "%s:%s"

    new-array v1, v7, [Ljava/lang/Object;

    aget-object v2, v3, v8

    aput-object v2, v1, v8

    aget-object v2, v3, v6

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_4
    const-string v4, "MM-DD hh:mm"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 386
    const-string v1, "%s-%s %s:%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v8

    aget-object v0, v2, v7

    aput-object v0, v4, v6

    aget-object v0, v3, v8

    aput-object v0, v4, v7

    aget-object v0, v3, v6

    aput-object v0, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 389
    :cond_5
    const-string v4, "MM-DD"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 390
    const-string v1, "%s-%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aget-object v0, v2, v7

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 393
    :cond_6
    const-string v0, "mm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 394
    aget-object v0, v3, v6

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 397
    goto/16 :goto_0
.end method

.method public static a(FFI)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x1b

    const/4 v3, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 256
    sub-float v0, p0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    float-to-double v4, v0

    .line 257
    new-array v6, v9, [D

    fill-array-data v6, :array_0

    .line 259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 261
    :goto_0
    if-ge v2, v9, :cond_1

    .line 262
    aget-wide v0, v6, v2

    div-double/2addr v0, v4

    .line 264
    cmpg-double v8, v0, v10

    if-gez v8, :cond_0

    .line 265
    div-double v0, v10, v0

    .line 268
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 272
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 273
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v0, v4, v2

    if-gez v0, :cond_2

    .line 274
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 272
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 278
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 279
    aget-wide v2, v6, v0

    .line 280
    float-to-double v0, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 281
    float-to-double v4, p0

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    add-int/lit8 v1, v1, 0x1

    .line 283
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 285
    :goto_2
    if-gt v0, v1, :cond_4

    .line 286
    int-to-double v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 289
    :cond_4
    return-object v4

    .line 257
    nop

    :array_0
    .array-data 8
        0x3f50624dd2f1a9fcL    # 0.001
        0x3f647ae147ae147bL    # 0.0025
        0x3f747ae147ae147bL    # 0.005
        0x3f847ae147ae147bL    # 0.01
        0x3f9999999999999aL    # 0.025
        0x3fa999999999999aL    # 0.05
        0x3fb999999999999aL    # 0.1
        0x3fd0000000000000L    # 0.25
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
        0x4004000000000000L    # 2.5
        0x4014000000000000L    # 5.0
        0x4024000000000000L    # 10.0
        0x4039000000000000L    # 25.0
        0x4049000000000000L    # 50.0
        0x4059000000000000L    # 100.0
        0x406f400000000000L    # 250.0
        0x407f400000000000L    # 500.0
        0x408f400000000000L    # 1000.0
        0x40a3880000000000L    # 2500.0
        0x40b3880000000000L    # 5000.0
        0x40c3880000000000L    # 10000.0
        0x40d86a0000000000L    # 25000.0
        0x40e86a0000000000L    # 50000.0
        0x40f86a0000000000L    # 100000.0
        0x411e848000000000L    # 500000.0
        0x412e848000000000L    # 1000000.0
    .end array-data
.end method

.method public static a(Ljava/util/List;)[F
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/stockchart/e/a;",
            ">;)[F"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-array v0, v10, [F

    fill-array-data v0, :array_0

    .line 88
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/a;

    .line 67
    invoke-interface {v0}, Lcom/xueqiu/android/stockchart/e/a;->a()[F

    move-result-object v0

    .line 69
    aget v0, v0, v4

    .line 72
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stockchart/e/a;

    .line 73
    invoke-interface {v0}, Lcom/xueqiu/android/stockchart/e/a;->a()[F

    move-result-object v6

    array-length v7, v6

    move v3, v4

    move v0, v1

    move v1, v2

    :goto_2
    if-ge v3, v7, :cond_4

    aget v2, v6, v3

    .line 74
    cmpl-float v8, v2, v9

    if-eqz v8, :cond_3

    .line 78
    cmpl-float v8, v2, v1

    if-lez v8, :cond_1

    move v1, v2

    .line 82
    :cond_1
    cmpg-float v8, v2, v0

    if-ltz v8, :cond_2

    cmpl-float v8, v0, v9

    if-nez v8, :cond_3

    :cond_2
    move v0, v2

    .line 73
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_4
    move v2, v1

    move v1, v0

    .line 86
    goto :goto_1

    .line 88
    :cond_5
    new-array v0, v10, [F

    aput v2, v0, v4

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_0

    .line 63
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static b(D)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x2e

    const/4 v10, 0x3

    const/4 v0, 0x0

    const-wide v8, 0x40c3880000000000L    # 10000.0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    const-wide/16 v4, 0x0

    cmpg-double v1, p0, v4

    if-gez v1, :cond_0

    .line 331
    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    neg-double p0, p0

    .line 335
    :cond_0
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v4, v0

    const/4 v1, 0x1

    const-string v2, "\u4e07"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "\u4ebf"

    aput-object v2, v4, v1

    const-string v1, "\u4e07\u4ebf"

    aput-object v1, v4, v10

    move v2, v0

    .line 337
    :goto_0
    cmpl-double v0, p0, v8

    if-lez v0, :cond_1

    if-ge v2, v10, :cond_1

    .line 338
    div-double/2addr p0, v8

    .line 339
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 341
    :cond_1
    mul-double v0, p0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v6

    .line 342
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 344
    if-gez v0, :cond_2

    .line 345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v6, v0, 0x2

    if-gt v5, v6, :cond_3

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 351
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    aget-object v0, v4, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/text/DecimalFormat;
    .locals 4

    .prologue
    .line 414
    invoke-static {p0}, Lcom/xueqiu/android/stockchart/f/a;->a(Ljava/lang/String;)Lcom/xueqiu/android/stockchart/f/b;

    move-result-object v1

    .line 415
    const-string v0, "0.00"

    .line 417
    iget-object v2, v1, Lcom/xueqiu/android/stockchart/f/b;->c:Ljava/lang/String;

    const-string v3, "\u57fa\u91d1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lcom/xueqiu/android/stockchart/f/b;->c:Ljava/lang/String;

    const-string v2, "\u6caaB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    :cond_0
    const-string v0, "0.000"

    .line 421
    :cond_1
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 400
    invoke-static {p0}, Lcom/xueqiu/android/stockchart/f/a;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 485
    const-string v0, "1minute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "5m"

    .line 486
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "15m"

    .line 487
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "30m"

    .line 488
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "60m"

    .line 489
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 443
    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xd

    if-eq p0, v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    const/16 v1, 0x11

    if-eq p0, v1, :cond_0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1e

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static e(I)Z
    .locals 1

    .prologue
    .line 456
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 472
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(I)Z
    .locals 1

    .prologue
    .line 479
    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
