.class public final Lcom/xueqiu/android/base/util/as;
.super Ljava/lang/Object;
.source "StockUtils.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static final k:Ljava/util/TimeZone;

.field public static final l:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const-string v0, "1d"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->a:Ljava/lang/String;

    const-string v0, "5d"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->b:Ljava/lang/String;

    const-string v0, "1m"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->c:Ljava/lang/String;

    const-string v0, "3m"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->d:Ljava/lang/String;

    const-string v0, "6m"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->e:Ljava/lang/String;

    const-string v0, "1y"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->f:Ljava/lang/String;

    const-string v0, "3y"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->g:Ljava/lang/String;

    const-string v0, "5y"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->h:Ljava/lang/String;

    const-string v0, "10y"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->i:Ljava/lang/String;

    const-string v0, "all"

    sput-object v0, Lcom/xueqiu/android/base/util/as;->j:Ljava/lang/String;

    .line 97
    const-string v0, "GMT+8"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "symbol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "current"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "change"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "percentage"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "marketCapital"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/base/util/as;->l:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/base/util/at;
    .locals 4

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    .line 191
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 192
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "\u00a5"

    const-string v2, "\u56fd\u503a"

    const-string v3, "\u6caa\u6df1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 194
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "\u00a5"

    const-string v2, "\u4f01\u503a"

    const-string v3, "\u6caa\u6df1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 196
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "\u00a5"

    const-string v2, "\u8d27\u5e01\u57fa\u91d1"

    const-string v3, "\u6caa\u6df1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    const/16 v1, 0x28

    if-ne v0, v1, :cond_3

    .line 198
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, ""

    const-string v2, "bitcoin"

    const-string v3, "bitcoin"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockQuote;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/String;)Lcom/xueqiu/android/base/util/at;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/xueqiu/android/base/util/at;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :goto_0
    return-object v0

    .line 2266
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 156
    :goto_1
    if-eqz v0, :cond_3

    .line 157
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "\uffe5"

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u53ef\u8f6c\u503a"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2268
    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "SH11"

    aput-object v0, v3, v2

    const-string v0, "SH12"

    aput-object v0, v3, v1

    move v0, v2

    .line 2269
    :goto_2
    if-ge v0, v5, :cond_16

    aget-object v4, v3, v0

    .line 2270
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 2272
    goto :goto_1

    .line 2269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3247
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 158
    :goto_3
    if-eqz v0, :cond_6

    .line 159
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "\uffe5"

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u57fa\u91d1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3249
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

    .line 3250
    :goto_4
    if-ge v0, v6, :cond_15

    aget-object v4, v3, v0

    .line 3251
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    .line 3253
    goto :goto_3

    .line 3250
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 160
    :cond_6
    const-string v0, "SH\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SZ\\d+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 161
    :cond_7
    const-string v0, "SZ200"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "HK$"

    const-string v2, "\u6df1B"

    const-string v3, "\u6caa\u6df1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_8
    const-string v0, "SH900"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 164
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "$"

    const-string v2, "\u6caaB"

    const-string v3, "\u6caa\u6df1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    :cond_9
    const-string v0, "SH00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "SZ399"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 166
    :cond_a
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, ""

    const-string v2, "\u6caa\u6df1"

    const-string v3, "\u6307\u6570"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 168
    :cond_b
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "\uffe5"

    const-string v2, "A\u80a1"

    const-string v3, "\u6caa\u6df1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_c
    invoke-static {p0}, Lcom/xueqiu/android/base/util/as;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 171
    new-instance v1, Lcom/xueqiu/android/base/util/at;

    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "\uffe5"

    :goto_5
    const-string v2, "\u6e2f\u80a1"

    const-string v3, "\u6e2f\u80a1"

    invoke-direct {v1, v0, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    const-string v0, "HK$"

    goto :goto_5

    .line 4212
    :cond_e
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

    .line 4213
    :goto_6
    const/16 v4, 0xa

    if-ge v0, v4, :cond_14

    aget-object v4, v3, v0

    .line 4214
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v0, v1

    .line 172
    :goto_7
    if-eqz v0, :cond_10

    .line 173
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, ""

    const-string v2, "\u6e2f\u80a1"

    const-string v3, "\u6307\u6570"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4213
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4230
    :cond_10
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

    .line 4231
    :goto_8
    if-ge v0, v6, :cond_13

    aget-object v4, v3, v0

    .line 4232
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 174
    :goto_9
    if-eqz v1, :cond_12

    .line 175
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, ""

    const-string v2, "\u7f8e\u80a1"

    const-string v3, "\u6307\u6570"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4231
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 177
    :cond_12
    new-instance v0, Lcom/xueqiu/android/base/util/at;

    const-string v1, "$"

    const-string v2, "\u7f8e\u80a1"

    const-string v3, "\u7f8e\u80a1"

    invoke-direct {v0, v1, v2, v3}, Lcom/xueqiu/android/base/util/at;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto :goto_9

    :cond_14
    move v0, v2

    goto :goto_7

    :cond_15
    move v0, v2

    goto/16 :goto_3

    :cond_16
    move v0, v2

    goto/16 :goto_1
.end method

.method private static a(D)Ljava/lang/String;
    .locals 4

    .prologue
    .line 720
    const-string v0, "#"

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 728
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(DD)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1130
    const/4 v0, 0x2

    .line 1131
    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-eqz v1, :cond_0

    .line 1132
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 1134
    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1142
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

    .line 1144
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1137
    :cond_1
    const-string v1, "0."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static a(DI)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1081
    packed-switch p2, :pswitch_data_0

    .line 1108
    :pswitch_0
    const-string v0, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    :goto_0
    return-object v0

    .line 1090
    :pswitch_1
    const-string v0, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1100
    :pswitch_2
    const-string v0, "%.3f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1105
    :pswitch_3
    const-string v0, "%.4f"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1081
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 414
    invoke-static/range {p1 .. p1}, Lcom/xueqiu/android/base/util/as;->a(Lcom/xueqiu/android/stock/model/StockQuote;)Lcom/xueqiu/android/base/util/at;

    move-result-object v2

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 417
    const v0, 0x7f0703a1

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/xueqiu/android/base/util/at;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 418
    const v0, 0x7f07039d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/xueqiu/android/base/util/at;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 420
    const v0, 0x7f07039f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 421
    const v0, 0x7f0703a3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 423
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 427
    const v1, 0x7f07033a

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getUpdateTime()Ljava/util/Calendar;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getOpen()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 433
    const v1, 0x7f07032a

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getOpen()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getLastClose()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    if-eqz v5, :cond_22

    .line 439
    const v1, 0x7f070306

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getLastClose()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :goto_0
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getHigh()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 447
    const v1, 0x7f070315

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getHigh()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getLow()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 452
    const v1, 0x7f070325

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getLow()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getVolume()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 456
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 457
    if-eqz v5, :cond_23

    .line 458
    const v0, 0x7f070304

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getVolume()D

    move-result-wide v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :goto_1
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 477
    if-eqz v5, :cond_27

    .line 478
    const v1, 0x7f070303

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getAmount()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :goto_2
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getIpoTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 486
    const v1, 0x7f070319

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getIpoTime()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 491
    const v1, 0x7f070336

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getReleaseDate()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getIpoPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 496
    const v1, 0x7f070318

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "%s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getIpoPrice()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f070559

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 496
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getParValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 502
    const v1, 0x7f07032b

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getParValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDueDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 507
    const v1, 0x7f07030d

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDueDate()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPublisher()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 511
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 512
    const v1, 0x7f070332

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPublisher()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRedeemType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 517
    const v1, 0x7f070334

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRedeemType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getIssueType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 521
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 522
    const v1, 0x7f07031a

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getIssueType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getBondType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 526
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 527
    const v1, 0x7f07030a

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getBondType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getWarrant()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 531
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    const v1, 0x7f07033d

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getWarrant()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSaleOrg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 536
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 537
    const v1, 0x7f070338

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getSaleOrg()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 541
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 542
    const v1, 0x7f070333

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRate()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRiseStop()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 547
    if-eqz v5, :cond_28

    .line 548
    const v1, 0x7f070308

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRiseStop()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :goto_3
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getFallStop()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 555
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 556
    if-eqz v5, :cond_29

    .line 557
    const v1, 0x7f070305

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getFallStop()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :goto_4
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getHigh52week()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 564
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 565
    const v1, 0x7f070316

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getHigh52week()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getLow52week()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 569
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 570
    const v1, 0x7f070326

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getLow52week()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_16
    if-nez v4, :cond_3e

    .line 575
    const v0, 0x7f07039e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v2, Lcom/xueqiu/android/base/util/at;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeLyr()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 578
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 579
    if-eqz v5, :cond_2a

    .line 580
    const v0, 0x7f070307

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeLyr()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    :goto_5
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeTtm()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 591
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 592
    if-eqz v5, :cond_2f

    .line 593
    const v0, 0x7f070309

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeTtm()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :goto_6
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getEps()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 606
    const v4, 0x7f07030f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getEps()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetAssets()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 610
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 611
    if-eqz v1, :cond_35

    .line 612
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetAssets()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v0, v10, v12

    if-gez v0, :cond_34

    const v0, 0x7f070313

    .line 611
    :goto_7
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_36

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetAssets()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/as;->a(D)Ljava/lang/String;

    move-result-object v0

    .line 611
    :goto_8
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDividend()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 617
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getYield()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const v0, 0x7f07030c

    :goto_9
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getYield()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDividend()D

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getYield()D

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    :goto_a
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getTotalShares()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 624
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 625
    if-eqz v1, :cond_39

    const v0, 0x7f070312

    :goto_b
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 626
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getTotalShares()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\u4efd"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_c
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarketCapital()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 630
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 631
    if-eqz v1, :cond_3b

    const v0, 0x7f070329

    :goto_d
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarketCapital()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5143"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_e
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getInstOwn()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 637
    const v1, 0x7f070317

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getInstOwn()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    :cond_1e
    if-nez v6, :cond_1f

    if-eqz v7, :cond_20

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDueTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 642
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 643
    const v1, 0x7f07030e

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDueTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_20
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getType()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 702
    const-string v1, "\u4ea4\u6613\u8d27\u5e01"

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getCurrencyUnit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    :cond_21
    return-object v8

    .line 441
    :cond_22
    const v1, 0x7f070324

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getLastClose()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 460
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getVolumeAverage()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x7f07033b

    :goto_10
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getVolume()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getVolumeAverage()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getVolumeAverage()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_11
    if-eqz v4, :cond_24

    .line 466
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v11, 0x7f070558

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_24

    .line 468
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v11, 0x7f070558

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    :cond_24
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 460
    :cond_25
    const v0, 0x7f07033c

    goto/16 :goto_10

    .line 464
    :cond_26
    const-string v0, ""

    goto :goto_11

    .line 480
    :cond_27
    const v1, 0x7f070302

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getAmount()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 550
    :cond_28
    const v1, 0x7f070337

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getRiseStop()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 559
    :cond_29
    const v1, 0x7f070310

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getFallStop()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 581
    :cond_2a
    if-nez v6, :cond_2b

    if-eqz v7, :cond_2c

    .line 582
    :cond_2b
    const v0, 0x7f07032e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "%s%%"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 583
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeLyr()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 582
    invoke-interface {v4, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 585
    :cond_2c
    if-eqz v1, :cond_2d

    const v0, 0x7f07032d

    :goto_12
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v1, :cond_2e

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeLyr()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 585
    :goto_13
    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2d
    const v0, 0x7f07032c

    goto :goto_12

    .line 586
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeLyr()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/as;->a(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 594
    :cond_2f
    if-nez v6, :cond_30

    if-eqz v7, :cond_31

    .line 595
    :cond_30
    const v0, 0x7f070331

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "%s%%"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 596
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeTtm()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 595
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 598
    :cond_31
    if-eqz v1, :cond_32

    const v0, 0x7f070330

    :goto_14
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_33

    .line 599
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeTtm()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 598
    :goto_15
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_32
    const v0, 0x7f07032f

    goto :goto_14

    .line 599
    :cond_33
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getPeTtm()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/as;->a(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 612
    :cond_34
    const v0, 0x7f070314

    goto/16 :goto_7

    :cond_35
    const v0, 0x7f070311

    goto/16 :goto_7

    .line 613
    :cond_36
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getNetAssets()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_8

    .line 618
    :cond_37
    const v0, 0x7f07030b

    goto/16 :goto_9

    .line 619
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getDividend()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto/16 :goto_a

    .line 625
    :cond_39
    const v0, 0x7f070339

    goto/16 :goto_b

    .line 626
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getTotalShares()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 631
    :cond_3b
    const v0, 0x7f0703a0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const v0, 0x7f070328

    goto/16 :goto_d

    :cond_3c
    const v0, 0x7f070327

    goto/16 :goto_d

    .line 632
    :cond_3d
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getMarketCapital()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 647
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 649
    const v1, 0x7f070321

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 651
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockCurrent()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 655
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 656
    const v1, 0x7f070322

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStockCurrent()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_40
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzConvertTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 662
    const v1, 0x7f07031c

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzConvertTime()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_41
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzConvertPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 666
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 667
    const v1, 0x7f07031b

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzConvertPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_42
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzConvertValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 671
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 672
    const v1, 0x7f07031d

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzConvertValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_43
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzCpr()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 676
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 677
    const v1, 0x7f07031e

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzCpr()D

    move-result-wide v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Lcom/xueqiu/android/base/util/as;->a(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_44
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzRedemptPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 681
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 682
    if-nez v6, :cond_45

    if-eqz v7, :cond_48

    .line 683
    :cond_45
    const v1, 0x7f070335

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzRedemptPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    :goto_16
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStraightPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 690
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 691
    const v1, 0x7f070323

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzStraightPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    :cond_47
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzPutbackPrice()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 695
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 696
    const v1, 0x7f07031f

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzPutbackPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 685
    :cond_48
    const v1, 0x7f070320

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getKzzRedemptPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16
.end method

.method public static a(Landroid/content/Context;Lcom/xueqiu/android/stock/model/StockQuote;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xueqiu/android/stock/model/StockQuote;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getOriginalJson()Lorg/json/JSONObject;

    move-result-object v8

    .line 303
    if-nez v8, :cond_0

    .line 304
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 403
    :goto_0
    return-object v2

    .line 307
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v3, Ljava/util/TreeMap;

    new-instance v2, Lcom/xueqiu/android/base/util/as$1;

    invoke-direct {v2}, Lcom/xueqiu/android/base/util/as$1;-><init>()V

    invoke-direct {v3, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 320
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 321
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 323
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 324
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 326
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 334
    const-string v4, "open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "high"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "low"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "last_close"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 335
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/xueqiu/android/stock/model/StockQuote;->getTickSize()D

    move-result-wide v12

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/xueqiu/android/stockchart/f/a;->a(DD)Ljava/lang/String;

    move-result-object v2

    .line 338
    :cond_4
    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 339
    const-string v4, "_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 340
    const/4 v4, 0x0

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 341
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 343
    if-eqz v2, :cond_6

    const-string v7, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 345
    const-string v7, "time"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 346
    const/16 v5, 0x14

    const/16 v7, 0x19

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 348
    const-string v7, "-0500"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "-0400"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 349
    :cond_5
    const v5, 0x7f070408

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 358
    :goto_3
    :try_start_0
    invoke-static {v2}, Lcom/xueqiu/android/base/util/h;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v11

    .line 362
    const/4 v5, 0x1

    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v5, v12, :cond_8

    .line 363
    const-string v5, "MM-dd HH:mm:ss"

    .line 367
    :goto_4
    new-instance v12, Ljava/text/SimpleDateFormat;

    sget-object v13, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v12, v5, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 368
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 369
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "("

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    :goto_5
    const-string v5, "time"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 376
    const v3, 0x7f07033a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    move-object v4, v3

    .line 399
    :cond_6
    :goto_7
    invoke-interface {v10, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 351
    :cond_7
    const v5, 0x7f070407

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    goto :goto_3

    .line 365
    :cond_8
    :try_start_1
    const-string v5, "yyyy-MM-dd HH:mm:ss"
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 372
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_5

    .line 378
    :cond_9
    const-string v3, "pct"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 379
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/text/DecimalFormat;

    const-string v11, "0.00"

    invoke-direct {v7, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v12

    invoke-virtual {v7, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 381
    :cond_a
    const-string v3, "nakepct"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 382
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 384
    :cond_b
    const-string v3, "int"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 385
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 386
    :cond_c
    const-string v3, "long"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 387
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 388
    :cond_d
    const-string v3, "double"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 389
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/au;->a(D)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    .line 390
    :cond_e
    const-string v3, "date"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 391
    invoke-static {v2}, Lcom/xueqiu/android/base/util/h;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 392
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v5, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 393
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_7

    :cond_f
    move-object v4, v5

    .line 397
    goto/16 :goto_7

    :cond_10
    move-object v2, v6

    .line 403
    goto/16 :goto_0

    :cond_11
    move-object v3, v4

    goto/16 :goto_6
.end method

.method public static a()Z
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 743
    sget-object v2, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 745
    const/4 v2, 0x7

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return v0

    .line 749
    :cond_1
    sget-object v2, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 750
    invoke-virtual {v2, v6, v6}, Ljava/util/Calendar;->set(II)V

    .line 751
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 752
    const/4 v4, 0x7

    invoke-virtual {v2, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 754
    sget-object v4, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 755
    const/16 v5, 0xa

    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 756
    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 757
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 759
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 760
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gtz v2, :cond_3

    move v2, v1

    .line 761
    :goto_1
    if-eqz v2, :cond_4

    .line 762
    sget-object v2, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 763
    const/16 v4, 0x15

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 764
    const/16 v4, 0x1e

    invoke-virtual {v2, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 766
    sget-object v4, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 767
    const/4 v5, 0x4

    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 768
    invoke-virtual {v4, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 770
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v0

    .line 760
    goto :goto_1

    .line 772
    :cond_4
    sget-object v2, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 773
    const/16 v4, 0x16

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 774
    const/16 v4, 0x1e

    invoke-virtual {v2, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 776
    sget-object v4, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 777
    const/4 v5, 0x5

    invoke-virtual {v4, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 778
    invoke-virtual {v4, v8, v0}, Ljava/util/Calendar;->set(II)V

    .line 780
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gez v2, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-gtz v2, :cond_0

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 1003
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

.method private static a(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 710
    if-nez p0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Z
    .locals 10

    .prologue
    const/4 v4, 0x7

    const/16 v9, 0xc

    const/4 v1, 0x1

    const/16 v8, 0xb

    const/4 v2, 0x0

    .line 794
    sget-object v0, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 796
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 797
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v2

    .line 801
    :cond_1
    sget-object v0, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 802
    const/16 v4, 0x9

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 803
    const/16 v4, 0xf

    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 805
    sget-object v4, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 806
    invoke-virtual {v4, v8, v8}, Ljava/util/Calendar;->set(II)V

    .line 807
    const/16 v5, 0x1e

    invoke-virtual {v4, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 809
    sget-object v5, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 810
    const/16 v6, 0xd

    invoke-virtual {v5, v8, v6}, Ljava/util/Calendar;->set(II)V

    .line 811
    invoke-virtual {v5, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 813
    sget-object v6, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 814
    const/16 v7, 0xf

    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->set(II)V

    .line 815
    invoke-virtual {v6, v9, v2}, Ljava/util/Calendar;->set(II)V

    .line 817
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_3

    move v0, v1

    .line 818
    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gtz v3, :cond_4

    move v3, v1

    .line 820
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 817
    goto :goto_1

    :cond_4
    move v3, v2

    .line 818
    goto :goto_2
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 1008
    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x19

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1076
    const-string v0, "cn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .locals 10

    .prologue
    const/4 v4, 0x7

    const/16 v9, 0xb

    const/4 v1, 0x1

    const/16 v8, 0xc

    const/4 v2, 0x0

    .line 832
    sget-object v0, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 834
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 835
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 858
    :cond_0
    :goto_0
    return v2

    .line 839
    :cond_1
    sget-object v0, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 840
    const/16 v4, 0x9

    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->set(II)V

    .line 841
    const/16 v4, 0x1e

    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 843
    sget-object v4, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 844
    invoke-virtual {v4, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 845
    invoke-virtual {v4, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 847
    sget-object v5, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 848
    const/16 v6, 0xd

    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->set(II)V

    .line 849
    invoke-virtual {v5, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 851
    sget-object v6, Lcom/xueqiu/android/base/util/as;->k:Ljava/util/TimeZone;

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 852
    const/16 v7, 0x10

    invoke-virtual {v6, v9, v7}, Ljava/util/Calendar;->set(II)V

    .line 853
    invoke-virtual {v6, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 855
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_3

    move v0, v1

    .line 856
    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-gtz v3, :cond_4

    move v3, v1

    .line 858
    :goto_2
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 855
    goto :goto_1

    :cond_4
    move v3, v2

    .line 856
    goto :goto_2
.end method

.method public static c(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1021
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

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1148
    const-string v0, "USEX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    const-string v0, "USEX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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
    .locals 1

    .prologue
    .line 1028
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1159
    const-string v0, "HKEX"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1244
    if-nez p0, :cond_1

    .line 1267
    :cond_0
    :goto_0
    return-object v0

    .line 1248
    :cond_1
    invoke-static {p0}, Lcom/xueqiu/android/base/util/as;->a(Ljava/lang/String;)Lcom/xueqiu/android/base/util/at;

    move-result-object v1

    .line 1249
    iget-object v1, v1, Lcom/xueqiu/android/base/util/at;->b:Ljava/lang/String;

    .line 1251
    const-string v2, "\u7f8e\u80a1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1252
    const-string v0, "USEX"

    goto :goto_0

    .line 1255
    :cond_2
    const-string v2, "\u6e2f\u80a1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1256
    const-string v0, "HKEX"

    goto :goto_0

    .line 1259
    :cond_3
    const-string v1, "SH\\d+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1260
    const-string v0, "SHEX"

    goto :goto_0

    .line 1263
    :cond_4
    const-string v1, "SZ\\d+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1264
    const-string v0, "SZEX"

    goto :goto_0
.end method

.method public static e(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1039
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

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

    const/16 v1, 0x1e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x28

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1272
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sp"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1274
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x13

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1275
    const-string v0, "PAMID"

    .line 1281
    :goto_0
    return-object v0

    .line 1276
    :cond_0
    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x45

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1277
    const-string v0, "DYZQ"

    goto :goto_0

    .line 1278
    :cond_1
    const-wide/16 v2, 0x46

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    const-wide/16 v2, 0x4f

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 1279
    const-string v0, "IB"

    goto :goto_0

    .line 1281
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(I)Z
    .locals 1

    .prologue
    .line 1069
    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x18

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1220
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

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

    const/16 v1, 0xb

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

.method private static g(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :goto_0
    return v0

    .line 287
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static h(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1233
    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3d

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3e

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
