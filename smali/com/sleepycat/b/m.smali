.class public final Lcom/sleepycat/b/m;
.super Ljava/lang/Object;
.source "DatabaseEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static g:I


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x64

    sput v0, Lcom/sleepycat/b/m;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Lcom/sleepycat/b/m;->b:I

    .line 105
    iput v0, p0, Lcom/sleepycat/b/m;->c:I

    .line 106
    iput v0, p0, Lcom/sleepycat/b/m;->d:I

    .line 107
    iput v0, p0, Lcom/sleepycat/b/m;->e:I

    .line 108
    iput-boolean v0, p0, Lcom/sleepycat/b/m;->f:Z

    .line 152
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Lcom/sleepycat/b/m;->b:I

    .line 105
    iput v0, p0, Lcom/sleepycat/b/m;->c:I

    .line 106
    iput v0, p0, Lcom/sleepycat/b/m;->d:I

    .line 107
    iput v0, p0, Lcom/sleepycat/b/m;->e:I

    .line 108
    iput-boolean v0, p0, Lcom/sleepycat/b/m;->f:Z

    .line 162
    iput-object p1, p0, Lcom/sleepycat/b/m;->a:[B

    .line 163
    if-eqz p1, :cond_0

    .line 164
    array-length v0, p1

    iput v0, p0, Lcom/sleepycat/b/m;->e:I

    .line 166
    :cond_0
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Lcom/sleepycat/b/m;->b:I

    .line 105
    iput v0, p0, Lcom/sleepycat/b/m;->c:I

    .line 106
    iput v0, p0, Lcom/sleepycat/b/m;->d:I

    .line 107
    iput v0, p0, Lcom/sleepycat/b/m;->e:I

    .line 108
    iput-boolean v0, p0, Lcom/sleepycat/b/m;->f:Z

    .line 178
    iput-object p1, p0, Lcom/sleepycat/b/m;->a:[B

    .line 179
    iput p2, p0, Lcom/sleepycat/b/m;->d:I

    .line 180
    iput p3, p0, Lcom/sleepycat/b/m;->e:I

    .line 181
    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    sget-object v0, Lcom/sleepycat/b/l/w;->a:Lcom/sleepycat/b/l/x;

    sget v1, Lcom/sleepycat/b/m;->g:I

    invoke-static {p0, v1}, Lcom/sleepycat/c/a/a;->a(Lcom/sleepycat/b/m;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/l/x;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(IIZ)V
    .locals 0

    .prologue
    .line 273
    .line 1339
    iput p1, p0, Lcom/sleepycat/b/m;->c:I

    .line 2307
    iput p2, p0, Lcom/sleepycat/b/m;->b:I

    .line 2370
    iput-boolean p3, p0, Lcom/sleepycat/b/m;->f:Z

    .line 276
    return-void
.end method

.method public final a([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    iput-object p1, p0, Lcom/sleepycat/b/m;->a:[B

    .line 208
    iput v0, p0, Lcom/sleepycat/b/m;->d:I

    .line 209
    if-nez p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/sleepycat/b/m;->e:I

    .line 210
    return-void

    .line 209
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public final a([BII)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/sleepycat/b/m;->a:[B

    .line 223
    iput p2, p0, Lcom/sleepycat/b/m;->d:I

    .line 224
    iput p3, p0, Lcom/sleepycat/b/m;->e:I

    .line 225
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 454
    instance-of v0, p1, Lcom/sleepycat/b/m;

    if-nez v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v1

    .line 457
    :cond_1
    check-cast p1, Lcom/sleepycat/b/m;

    .line 458
    iget-boolean v0, p0, Lcom/sleepycat/b/m;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/sleepycat/b/m;->f:Z

    if-eqz v0, :cond_3

    .line 459
    :cond_2
    iget-boolean v0, p0, Lcom/sleepycat/b/m;->f:Z

    iget-boolean v3, p1, Lcom/sleepycat/b/m;->f:Z

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/sleepycat/b/m;->b:I

    iget v3, p1, Lcom/sleepycat/b/m;->b:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/sleepycat/b/m;->c:I

    iget v3, p1, Lcom/sleepycat/b/m;->c:I

    if-ne v0, v3, :cond_0

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/b/m;->a:[B

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/sleepycat/b/m;->a:[B

    if-nez v0, :cond_4

    move v1, v2

    .line 466
    goto :goto_0

    .line 468
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/b/m;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sleepycat/b/m;->a:[B

    if-eqz v0, :cond_0

    .line 471
    iget v0, p0, Lcom/sleepycat/b/m;->e:I

    iget v3, p1, Lcom/sleepycat/b/m;->e:I

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 474
    :goto_1
    iget v3, p0, Lcom/sleepycat/b/m;->e:I

    if-ge v0, v3, :cond_5

    .line 475
    iget-object v3, p0, Lcom/sleepycat/b/m;->a:[B

    iget v4, p0, Lcom/sleepycat/b/m;->d:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    iget-object v4, p1, Lcom/sleepycat/b/m;->a:[B

    iget v5, p1, Lcom/sleepycat/b/m;->d:I

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    .line 479
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 487
    .line 488
    iget-object v1, p0, Lcom/sleepycat/b/m;->a:[B

    if-eqz v1, :cond_0

    move v1, v0

    .line 489
    :goto_0
    iget v2, p0, Lcom/sleepycat/b/m;->e:I

    if-ge v0, v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/sleepycat/b/m;->a:[B

    iget v3, p0, Lcom/sleepycat/b/m;->d:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 493
    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<DatabaseEntry"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-boolean v1, p0, Lcom/sleepycat/b/m;->f:Z

    if-eqz v1, :cond_0

    .line 127
    const-string v1, " partial=\"true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\" doff=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/m;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\" dlen=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/m;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    const-string v1, " offset=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/m;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "\" size=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/b/m;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "\" data=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/b/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v1, p0, Lcom/sleepycat/b/m;->e:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Lcom/sleepycat/b/m;->g:I

    if-le v1, v2, :cond_1

    .line 136
    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sleepycat/b/m;->e:I

    sget v4, Lcom/sleepycat/b/m;->g:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes not shown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_1
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
