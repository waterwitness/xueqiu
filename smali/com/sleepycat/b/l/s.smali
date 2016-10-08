.class public final Lcom/sleepycat/b/l/s;
.super Lcom/sleepycat/b/l/r;
.source "INTargetRep.java"


# instance fields
.field private final b:[Lcom/sleepycat/b/l/ac;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sleepycat/b/l/r;-><init>()V

    .line 58
    new-array v0, p1, [Lcom/sleepycat/b/l/ac;

    iput-object v0, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    .line 59
    return-void
.end method


# virtual methods
.method public final a(ILcom/sleepycat/b/l/ac;)Lcom/sleepycat/b/l/r;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    aput-object p2, v0, p1

    .line 74
    return-object p0
.end method

.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4048
    sget-object v0, Lcom/sleepycat/b/l/v;->a:Lcom/sleepycat/b/l/v;

    .line 41
    return-object v0
.end method

.method public final bridge synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .line 3068
    iget-object v0, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    aget-object v0, v0, p1

    .line 41
    return-object v0
.end method

.method public final synthetic a(IIILcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    .line 2079
    iget-object v0, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    iget-object v1, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    invoke-static {v0, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    return-object p0
.end method

.method public final bridge synthetic a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p2, Lcom/sleepycat/b/l/ac;

    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/b/l/s;->a(ILcom/sleepycat/b/l/ac;)Lcom/sleepycat/b/l/r;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/sleepycat/b/l/j;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 41
    .line 1086
    iget-object v3, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    array-length v4, v3

    move v2, v1

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 1087
    if-eqz v5, :cond_0

    .line 1088
    add-int/lit8 v0, v0, 0x1

    .line 1086
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1092
    :cond_1
    const/4 v2, 0x4

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    array-length v2, v2

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_3

    :cond_2
    move-object v0, p0

    .line 1094
    :goto_1
    return-object v0

    .line 1098
    :cond_3
    if-nez v0, :cond_4

    .line 1099
    sget-object v0, Lcom/sleepycat/b/l/s;->a:Lcom/sleepycat/b/l/t;

    .line 1109
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/sleepycat/b/l/s;->a(Lcom/sleepycat/b/l/k;Lcom/sleepycat/b/l/j;)V

    goto :goto_1

    .line 1101
    :cond_4
    new-instance v2, Lcom/sleepycat/b/l/u;

    invoke-direct {v2}, Lcom/sleepycat/b/l/u;-><init>()V

    move v0, v1

    .line 1102
    :goto_3
    iget-object v1, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 1103
    iget-object v1, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    .line 1104
    iget-object v1, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    aget-object v1, v1, v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/sleepycat/b/l/r;->a(ILjava/lang/Object;Lcom/sleepycat/b/l/j;)Ljava/lang/Object;

    .line 1102
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public final a(ZLcom/sleepycat/b/d/b;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 53
    sget v0, Lcom/sleepycat/b/c/ao;->A:I

    iget-object v1, p0, Lcom/sleepycat/b/l/s;->b:[Lcom/sleepycat/b/l/ac;

    array-length v1, v1

    invoke-static {v1}, Lcom/sleepycat/b/c/ao;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
