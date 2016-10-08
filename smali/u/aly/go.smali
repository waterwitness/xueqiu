.class public abstract Lu/aly/go;
.super Ljava/lang/Object;
.source "TTransport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BI)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 81
    move v0, v1

    .line 83
    :goto_0
    if-lt v0, p2, :cond_0

    .line 95
    return v0

    .line 84
    :cond_0
    add-int/lit8 v2, v0, 0x0

    sub-int v3, p2, v0

    invoke-virtual {p0, p1, v2, v3}, Lu/aly/go;->a([BII)I

    move-result v2

    .line 85
    if-gtz v2, :cond_1

    .line 86
    new-instance v2, Lu/aly/gp;

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot read. Remote side has closed. Tried to read "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 89
    const-string v4, " bytes, but only got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v3, " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-direct {v2, v0, v1}, Lu/aly/gp;-><init>(Ljava/lang/String;B)V

    throw v2

    .line 93
    :cond_1
    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public abstract a([BII)I
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public final a([B)V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lu/aly/go;->b([BII)V

    .line 106
    return-void
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b([BII)V
.end method

.method public c()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, -0x1

    return v0
.end method
