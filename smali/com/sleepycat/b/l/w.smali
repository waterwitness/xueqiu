.class public final Lcom/sleepycat/b/l/w;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sleepycat/b/l/w;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/sleepycat/b/l/x;

.field public static final b:[B

.field static final synthetic c:Z


# instance fields
.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    const-class v0, Lcom/sleepycat/b/l/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/w;->c:Z

    .line 86
    sget-object v0, Lcom/sleepycat/b/l/x;->a:Lcom/sleepycat/b/l/x;

    sput-object v0, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    .line 89
    new-array v0, v1, [B

    sput-object v0, Lcom/sleepycat/b/l/w;->b:[B

    return-void

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0
.end method

.method private a(Lcom/sleepycat/b/l/w;)I
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sleepycat/b/l/w;->d:[B

    iget-object v1, p1, Lcom/sleepycat/b/l/w;->d:[B

    invoke-static {v0, v1}, Lcom/sleepycat/b/l/w;->b([B[B)I

    move-result v0

    return v0
.end method

.method public static a([BII[BII)I
    .locals 4

    .prologue
    .line 211
    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 213
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 214
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    .line 215
    add-int v3, v0, p4

    aget-byte v3, p3, v3

    .line 216
    if-eq v2, v3, :cond_0

    .line 224
    and-int/lit16 v0, v2, 0xff

    and-int/lit16 v1, v3, 0xff

    sub-int/2addr v0, v1

    .line 228
    :goto_1
    return v0

    .line 213
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    sub-int v0, p2, p5

    goto :goto_1
.end method

.method public static a([BI[B)I
    .locals 4

    .prologue
    .line 236
    sget-boolean v0, Lcom/sleepycat/b/l/w;->c:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 238
    :cond_1
    array-length v0, p2

    .line 240
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 242
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 243
    aget-byte v2, p0, v0

    .line 244
    aget-byte v3, p2, v0

    .line 245
    if-eq v2, v3, :cond_2

    .line 250
    :goto_1
    return v0

    .line 242
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 250
    goto :goto_1
.end method

.method public static a([B[BLjava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Comparator",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    .line 187
    if-eqz p2, :cond_0

    .line 188
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/sleepycat/b/l/w;->b([B[B)I

    move-result v0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sleepycat/b/l/w;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3025
    const-string v0, "                                                                                                                                "

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, "<key v=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    sget-object v0, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    sget-object v2, Lcom/sleepycat/b/l/x;->a:Lcom/sleepycat/b/l/x;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    sget-object v2, Lcom/sleepycat/b/l/x;->b:Lcom/sleepycat/b/l/x;

    if-ne v0, v2, :cond_3

    .line 276
    :cond_0
    if-nez p0, :cond_2

    .line 277
    const-string v0, "<null>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_1
    :goto_0
    const-string v0, "\"/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_2
    sget-object v0, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    invoke-virtual {v0, p0}, Lcom/sleepycat/b/l/x;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 281
    :cond_3
    sget-object v0, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    sget-object v2, Lcom/sleepycat/b/l/x;->c:Lcom/sleepycat/b/l/x;

    if-ne v0, v2, :cond_5

    .line 282
    if-nez p0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/sleepycat/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 283
    :cond_5
    sget-object v0, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    sget-object v2, Lcom/sleepycat/b/l/x;->d:Lcom/sleepycat/b/l/x;

    if-ne v0, v2, :cond_1

    .line 284
    array-length v0, p0

    .line 285
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    const-string v0, " byte]"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const-string v0, " bytes]"

    goto :goto_2
.end method

.method public static a(Lcom/sleepycat/b/m;)[B
    .locals 5

    .prologue
    .line 105
    .line 1197
    iget-object v1, p0, Lcom/sleepycat/b/m;->a:[B

    .line 106
    if-nez v1, :cond_0

    .line 107
    sget-object v0, Lcom/sleepycat/b/l/w;->b:[B

    .line 112
    :goto_0
    return-object v0

    .line 1410
    :cond_0
    iget v0, p0, Lcom/sleepycat/b/m;->e:I

    .line 109
    new-array v0, v0, [B

    .line 2382
    iget v2, p0, Lcom/sleepycat/b/m;->d:I

    .line 110
    const/4 v3, 0x0

    .line 2410
    iget v4, p0, Lcom/sleepycat/b/m;->e:I

    .line 110
    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static a([B[B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lcom/sleepycat/b/l/w;->a([BI[B)I

    move-result v1

    .line 259
    if-nez v1, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    .line 263
    :cond_0
    new-array v0, v1, [B

    .line 264
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static b([B[B)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 198
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/b/l/w;->a([BII[BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/sleepycat/b/l/w;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/w;->a(Lcom/sleepycat/b/l/w;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 139
    instance-of v0, p1, Lcom/sleepycat/b/l/w;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sleepycat/b/l/w;

    invoke-direct {p0, p1}, Lcom/sleepycat/b/l/w;->a(Lcom/sleepycat/b/l/w;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    move v1, v0

    .line 148
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/b/l/w;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/sleepycat/b/l/w;->d:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return v1
.end method
