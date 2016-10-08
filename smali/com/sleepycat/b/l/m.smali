.class public final Lcom/sleepycat/b/l/m;
.super Lcom/sleepycat/b/l/l;
.source "INKeyRep.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/sleepycat/b/l/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/l/m;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sleepycat/b/l/l;-><init>()V

    .line 62
    new-array v0, p1, [[B

    iput-object v0, p0, Lcom/sleepycat/b/l/m;->b:[[B

    .line 63
    return-void
.end method


# virtual methods
.method public final a(I[B)Lcom/sleepycat/b/l/l;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sleepycat/b/l/m;->b:[[B

    aput-object p2, v0, p1

    .line 82
    return-object p0
.end method

.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7071
    sget-object v0, Lcom/sleepycat/b/l/o;->a:Lcom/sleepycat/b/l/o;

    .line 58
    return-object v0
.end method

.method public final bridge synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    .line 6076
    iget-object v0, p0, Lcom/sleepycat/b/l/m;->b:[[B

    aget-object v0, v0, p1

    .line 58
    return-object v0
.end method

.method public final synthetic a(IIILcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 58
    .line 5087
    iget-object v0, p0, Lcom/sleepycat/b/l/m;->b:[[B

    iget-object v1, p0, Lcom/sleepycat/b/l/m;->b:[[B

    invoke-static {v0, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    return-object p0
.end method

.method public final bridge synthetic a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/m;->a(I[B)Lcom/sleepycat/b/l/l;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 58
    .line 2108
    iget-object v0, p0, Lcom/sleepycat/b/l/m;->b:[[B

    array-length v0, v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_5

    .line 3071
    iget-object v0, p1, Lcom/sleepycat/b/l/j;->i:Lcom/sleepycat/b/c/i;

    .line 3133
    iget-object v0, v0, Lcom/sleepycat/b/c/i;->c:Lcom/sleepycat/b/c/ad;

    .line 4121
    iget v5, v0, Lcom/sleepycat/b/c/ad;->ah:I

    .line 2113
    if-lez v5, :cond_5

    .line 2120
    iget-object v6, p0, Lcom/sleepycat/b/l/m;->b:[[B

    array-length v7, v6

    move v4, v3

    move v0, v3

    move v1, v3

    move v2, v3

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v8, v6, v4

    .line 2121
    if-eqz v8, :cond_1

    .line 2122
    add-int/lit8 v1, v1, 0x1

    .line 2123
    array-length v9, v8

    if-le v9, v0, :cond_0

    .line 2124
    array-length v0, v8

    .line 2125
    if-gt v0, v5, :cond_5

    .line 2129
    :cond_0
    array-length v8, v8

    invoke-static {v8}, Lcom/sleepycat/b/c/ao;->a(I)I

    move-result v8

    add-int/2addr v2, v8

    .line 2120
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2133
    :cond_2
    if-eqz v1, :cond_5

    .line 2137
    invoke-virtual {p0}, Lcom/sleepycat/b/l/m;->b()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    .line 2139
    iget-object v1, p0, Lcom/sleepycat/b/l/m;->b:[[B

    array-length v1, v1

    invoke-static {v1, v0}, Lcom/sleepycat/b/l/n;->a(II)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 4158
    new-instance v1, Lcom/sleepycat/b/l/n;

    iget-object v2, p0, Lcom/sleepycat/b/l/m;->b:[[B

    array-length v2, v2

    int-to-short v0, v0

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/b/l/n;-><init>(IS)V

    move v0, v3

    .line 4161
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/b/l/m;->b:[[B

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 4162
    iget-object v2, p0, Lcom/sleepycat/b/l/m;->b:[[B

    aget-object v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/b/l/n;->a(I[B)Lcom/sleepycat/b/l/l;

    move-result-object v2

    .line 4163
    sget-boolean v3, Lcom/sleepycat/b/l/m;->a:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4161
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v1

    .line 2141
    :cond_5
    return-object p0
.end method

.method final a(ZLcom/sleepycat/b/d/b;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 94
    sget v0, Lcom/sleepycat/b/c/ao;->B:I

    iget-object v1, p0, Lcom/sleepycat/b/l/m;->b:[[B

    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method
