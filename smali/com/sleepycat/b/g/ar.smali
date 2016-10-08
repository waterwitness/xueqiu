.class public final Lcom/sleepycat/b/g/ar;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final a:[B

.field private static b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/sleepycat/b/g/ar;->b:Ljava/nio/charset/Charset;

    .line 52
    const-string v0, "je.logCharset"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 55
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/b/g/ar;->b:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x4

    return v0
.end method

.method public static a(I)I
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Lcom/sleepycat/c/e;->a(I)I

    move-result v0

    return v0
.end method

.method public static a(J)I
    .locals 2

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/sleepycat/c/e;->a(J)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/sleepycat/b/p/aq;)I
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/sleepycat/b/p/aq;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sleepycat/c/e;->a(J)I

    move-result v0

    return v0
.end method

.method public static a(Lcom/sleepycat/b/q/a;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-interface {p0}, Lcom/sleepycat/b/q/a;->b()[B

    move-result-object v1

    .line 487
    invoke-interface {p0}, Lcom/sleepycat/b/q/a;->c()[B

    move-result-object v2

    .line 488
    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x6

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    array-length v1, v1

    goto :goto_0

    :cond_1
    array-length v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/g/ar;->a([B)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/nio/ByteBuffer;Z)I
    .locals 1

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-static {p0}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/sleepycat/b/g/ar;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method public static a([B)I
    .locals 2

    .prologue
    .line 335
    if-nez p0, :cond_0

    .line 336
    const/4 v0, -0x1

    .line 2177
    invoke-static {v0}, Lcom/sleepycat/c/e;->a(I)I

    move-result v0

    .line 339
    :goto_0
    return v0

    .line 338
    :cond_0
    array-length v0, p0

    .line 3177
    invoke-static {v0}, Lcom/sleepycat/c/e;->a(I)I

    move-result v1

    .line 339
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 77
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/4 v2, 0x0

    shl-long/2addr v0, v2

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 80
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 81
    return-wide v0
.end method

.method public static a(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 121
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 122
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 124
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 125
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 126
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 128
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 129
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;J)V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 68
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 69
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 70
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 71
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/p/aq;)V
    .locals 2

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/sleepycat/b/p/aq;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;J)V

    .line 419
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/sleepycat/b/q/a;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 501
    invoke-interface {p1}, Lcom/sleepycat/b/q/a;->b()[B

    move-result-object v0

    .line 502
    invoke-interface {p1}, Lcom/sleepycat/b/q/a;->c()[B

    move-result-object v1

    .line 504
    invoke-interface {p1}, Lcom/sleepycat/b/q/a;->a()I

    move-result v2

    invoke-static {p0, v2}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;I)V

    .line 506
    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 513
    :goto_0
    if-nez v1, :cond_1

    .line 514
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 519
    :goto_1
    return-void

    .line 509
    :cond_0
    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 510
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 516
    :cond_1
    array-length v0, v1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 517
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public static a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;[B)V

    .line 388
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;S)V
    .locals 1

    .prologue
    .line 92
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 93
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 94
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 95
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 96
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;[B)V
    .locals 1

    .prologue
    .line 296
    if-nez p1, :cond_0

    .line 297
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 306
    :goto_0
    return-void

    .line 302
    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;I)V

    .line 305
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 257
    const/16 v0, 0x8

    return v0
.end method

.method public static b(Ljava/nio/ByteBuffer;Z)J
    .locals 2

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    invoke-static {p0}, Lcom/sleepycat/b/g/ar;->f(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 234
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/sleepycat/b/g/ar;->g(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static b(Ljava/nio/ByteBuffer;)S
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static b(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2, p1}, Lcom/sleepycat/c/e;->a([BII)I

    move-result v1

    .line 157
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;J)V
    .locals 3

    .prologue
    .line 209
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 210
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 211
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 212
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 213
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 214
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 216
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 218
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 219
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 220
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 221
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 222
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 223
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 224
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;[B)V
    .locals 0

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 350
    return-void
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public static c(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    .line 136
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 137
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 138
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    .line 139
    return v0
.end method

.method public static c(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 184
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 185
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 186
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 187
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 189
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 190
    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 191
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 192
    return-void
.end method

.method public static c(Ljava/nio/ByteBuffer;J)V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 265
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2, p1, p2}, Lcom/sleepycat/c/e;->a([BIJ)I

    move-result v1

    .line 268
    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    return-void
.end method

.method public static c(Ljava/nio/ByteBuffer;Z)[B
    .locals 1

    .prologue
    .line 312
    invoke-static {p0, p1}, Lcom/sleepycat/b/g/ar;->a(Ljava/nio/ByteBuffer;Z)I

    move-result v0

    .line 318
    if-gez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    .line 322
    :cond_0
    if-nez v0, :cond_1

    .line 323
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    goto :goto_0

    .line 326
    :cond_1
    new-array v0, v0, [B

    .line 327
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static d(Ljava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 165
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 166
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v2, v1

    .line 167
    invoke-static {v0, v2}, Lcom/sleepycat/c/e;->c([BI)I

    move-result v3

    .line 168
    invoke-static {v0, v2}, Lcom/sleepycat/c/e;->a([BI)I

    move-result v0

    .line 169
    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    return v0
.end method

.method public static d(Ljava/nio/ByteBuffer;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    invoke-static {p0, p1}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v1

    .line 399
    sget-object v0, Lcom/sleepycat/b/g/ar;->b:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/sleepycat/b/g/ar;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 402
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static d(Ljava/nio/ByteBuffer;I)[B
    .locals 1

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    sget-object v0, Lcom/sleepycat/b/g/ar;->a:[B

    .line 367
    :goto_0
    return-object v0

    .line 365
    :cond_0
    new-array v0, p1, [B

    .line 366
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static e(Ljava/nio/ByteBuffer;)I
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 199
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 200
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 201
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    .line 202
    return v0
.end method

.method public static e(Ljava/nio/ByteBuffer;Z)Lcom/sleepycat/b/p/aq;
    .locals 3

    .prologue
    .line 426
    invoke-static {p0, p1}, Lcom/sleepycat/b/g/ar;->b(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v0

    .line 427
    new-instance v2, Lcom/sleepycat/b/p/aq;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/b/p/aq;-><init>(J)V

    return-object v2
.end method

.method public static f(Ljava/nio/ByteBuffer;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 242
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/4 v2, 0x0

    shl-long/2addr v0, v2

    .line 243
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 244
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 246
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 247
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 248
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 249
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 250
    return-wide v0
.end method

.method public static f(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .prologue
    .line 441
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 442
    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 443
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/nio/ByteBuffer;)J
    .locals 6

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 276
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 277
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v2, v1

    .line 1197
    invoke-static {v0, v2}, Lcom/sleepycat/c/e;->c([BI)I

    move-result v3

    .line 279
    invoke-static {v0, v2}, Lcom/sleepycat/c/e;->b([BI)J

    move-result-wide v4

    .line 280
    add-int v0, v1, v3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 281
    return-wide v4
.end method

.method public static h(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 449
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 450
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/nio/ByteBuffer;)Lcom/sleepycat/b/q/a;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 526
    invoke-static {p0}, Lcom/sleepycat/b/g/ar;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 528
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 530
    if-ltz v0, :cond_1

    .line 531
    new-array v0, v0, [B

    .line 532
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 535
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 537
    if-ltz v3, :cond_0

    .line 538
    new-array v1, v3, [B

    .line 539
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 542
    :cond_0
    new-instance v3, Lcom/sleepycat/b/g/as;

    invoke-direct {v3, v2, v0, v1}, Lcom/sleepycat/b/g/as;-><init>(I[B[B)V

    return-object v3

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
