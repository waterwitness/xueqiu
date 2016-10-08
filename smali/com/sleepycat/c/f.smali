.class public final Lcom/sleepycat/c/f;
.super Ljava/lang/Object;
.source "UtfOps.java"


# static fields
.field private static a:[B

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/c/f;->a:[B

    .line 55
    const-string v0, ""

    sput-object v0, Lcom/sleepycat/c/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static a([BI)I
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    :goto_0
    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, p1

    if-eqz v2, :cond_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    .line 76
    :cond_0
    return v0
.end method

.method private static a([BI[CII)I
    .locals 6

    .prologue
    const/16 v5, 0x80

    .line 208
    add-int v2, p4, p1

    .line 209
    :goto_0
    if-ge p1, v2, :cond_3

    .line 210
    add-int/lit8 v1, p1, 0x1

    aget-byte v0, p0, p1

    and-int/lit16 v3, v0, 0xff

    .line 211
    and-int/lit16 v0, v3, 0xff

    shr-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    .line 233
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 213
    :pswitch_1
    add-int/lit8 v0, p3, 0x1

    int-to-char v3, v3

    aput-char v3, p2, p3

    move p3, v0

    move p1, v1

    .line 214
    goto :goto_0

    .line 216
    :pswitch_2
    add-int/lit8 p1, v1, 0x1

    aget-byte v1, p0, v1

    .line 217
    and-int/lit16 v0, v1, 0xc0

    if-eq v0, v5, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 220
    :cond_0
    add-int/lit8 v0, p3, 0x1

    and-int/lit8 v3, v3, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, p2, p3

    move p3, v0

    .line 222
    goto :goto_0

    .line 224
    :pswitch_3
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    .line 225
    add-int/lit8 p1, v0, 0x1

    aget-byte v4, p0, v0

    .line 226
    and-int/lit16 v0, v1, 0xc0

    if-ne v0, v5, :cond_1

    and-int/lit16 v0, v4, 0xc0

    if-eq v0, v5, :cond_2

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 228
    :cond_2
    add-int/lit8 v0, p3, 0x1

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    and-int/lit8 v3, v4, 0x3f

    shl-int/lit8 v3, v3, 0x0

    or-int/2addr v1, v3

    int-to-char v1, v1

    aput-char v1, p2, p3

    move p3, v0

    .line 231
    goto :goto_0

    .line 236
    :cond_3
    return p1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a([C)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 89
    array-length v1, p0

    .line 1107
    add-int/lit8 v2, v1, 0x0

    move v1, v0

    .line 1108
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1109
    aget-char v3, p0, v1

    .line 1110
    if-lez v3, :cond_0

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_0

    .line 1111
    add-int/lit8 v0, v0, 0x1

    .line 1108
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    :cond_0
    const/16 v4, 0x7ff

    if-le v3, v4, :cond_1

    .line 1113
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 1115
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 89
    :cond_2
    return v0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 293
    if-nez p2, :cond_0

    sget-object v0, Lcom/sleepycat/c/f;->b:Ljava/lang/String;

    .line 297
    :goto_0
    return-object v0

    .line 1159
    :cond_0
    add-int v3, p2, p1

    move v1, v2

    move v0, p1

    .line 1160
    :goto_1
    if-ge v0, v3, :cond_1

    .line 1161
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    packed-switch v4, :pswitch_data_0

    .line 1172
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1163
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 1174
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1166
    :pswitch_2
    add-int/lit8 v0, v0, 0x2

    .line 1167
    goto :goto_2

    .line 1169
    :pswitch_3
    add-int/lit8 v0, v0, 0x3

    .line 1170
    goto :goto_2

    .line 295
    :cond_1
    new-array v3, v1, [C

    .line 296
    invoke-static {p0, p1, v3, v2, p2}, Lcom/sleepycat/c/f;->a([BI[CII)I

    .line 297
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    .line 1161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a([C[BII)V
    .locals 6

    .prologue
    .line 256
    add-int/lit8 v2, p3, 0x0

    .line 257
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 258
    aget-char v3, p0, v1

    .line 259
    if-lez v3, :cond_0

    const/16 v0, 0x7f

    if-gt v3, v0, :cond_0

    .line 260
    add-int/lit8 v0, p2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 257
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move p2, v0

    goto :goto_0

    .line 261
    :cond_0
    const/16 v0, 0x7ff

    if-le v3, v0, :cond_1

    .line 262
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 263
    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    .line 264
    add-int/lit8 v0, v4, 0x1

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    goto :goto_1

    .line 266
    :cond_1
    add-int/lit8 v4, p2, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 267
    add-int/lit8 v0, v4, 0x1

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    goto :goto_1

    .line 270
    :cond_2
    return-void
.end method
