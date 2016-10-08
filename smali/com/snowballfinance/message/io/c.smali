.class public abstract Lcom/snowballfinance/message/io/c;
.super Ljava/lang/Object;
.source "FragmentSupport.java"


# direct methods
.method public static a(Lcom/snowballfinance/message/io/b;)I
    .locals 1

    .prologue
    .line 15
    .line 1106
    iget-object v0, p0, Lcom/snowballfinance/message/io/b;->g:[B

    .line 16
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method
