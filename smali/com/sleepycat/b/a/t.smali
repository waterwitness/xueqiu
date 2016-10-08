.class public Lcom/sleepycat/b/a/t;
.super Ljava/lang/Object;
.source "OffsetList.java"


# static fields
.field static final synthetic b:Z


# instance fields
.field a:Lcom/sleepycat/b/a/u;

.field private c:Lcom/sleepycat/b/a/u;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sleepycat/b/a/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sleepycat/b/a/t;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/sleepycat/b/a/u;

    invoke-direct {v0}, Lcom/sleepycat/b/a/u;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/b/a/t;->a:Lcom/sleepycat/b/a/u;

    .line 47
    iget-object v0, p0, Lcom/sleepycat/b/a/t;->a:Lcom/sleepycat/b/a/u;

    iput-object v0, p0, Lcom/sleepycat/b/a/t;->c:Lcom/sleepycat/b/a/u;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(JZ)Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 59
    sget-boolean v0, Lcom/sleepycat/b/a/t;->b:Z

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    iget v0, p0, Lcom/sleepycat/b/a/t;->d:I

    const/16 v2, 0x64

    if-gt v0, v2, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/sleepycat/b/a/t;->a:Lcom/sleepycat/b/a/u;

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_2

    move v0, v1

    .line 1212
    :goto_1
    iget v4, v2, Lcom/sleepycat/b/a/u;->a:I

    .line 1133
    if-ge v0, v4, :cond_1

    .line 1134
    invoke-virtual {v2, v0}, Lcom/sleepycat/b/a/u;->a(I)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move v0, v3

    .line 59
    :goto_2
    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dup Offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2198
    :cond_1
    iget-object v0, v2, Lcom/sleepycat/b/a/u;->b:Lcom/sleepycat/b/a/u;

    move-object v2, v0

    .line 1132
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1140
    goto :goto_2

    .line 66
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/b/a/t;->c:Lcom/sleepycat/b/a/u;

    .line 67
    iget-object v0, p0, Lcom/sleepycat/b/a/t;->c:Lcom/sleepycat/b/a/u;

    .line 3163
    iget v2, v0, Lcom/sleepycat/b/a/u;->a:I

    iget-object v5, v0, Lcom/sleepycat/b/a/u;->c:[I

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 3169
    iget-object v2, v0, Lcom/sleepycat/b/a/u;->c:[I

    iget v5, v0, Lcom/sleepycat/b/a/u;->a:I

    long-to-int v6, p1

    aput v6, v2, v5

    .line 3170
    iget v2, v0, Lcom/sleepycat/b/a/u;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/sleepycat/b/a/u;->a:I

    .line 67
    :goto_3
    iput-object v0, p0, Lcom/sleepycat/b/a/t;->c:Lcom/sleepycat/b/a/u;

    .line 68
    iget v0, p0, Lcom/sleepycat/b/a/t;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/b/a/t;->d:I

    .line 69
    iget-object v0, p0, Lcom/sleepycat/b/a/t;->c:Lcom/sleepycat/b/a/u;

    if-eq v0, v4, :cond_4

    move v1, v3

    :cond_4
    return v1

    .line 3179
    :cond_5
    new-instance v2, Lcom/sleepycat/b/a/u;

    invoke-direct {v2}, Lcom/sleepycat/b/a/u;-><init>()V

    .line 3180
    iget-object v5, v2, Lcom/sleepycat/b/a/u;->c:[I

    long-to-int v6, p1

    aput v6, v5, v1

    .line 3181
    iput v3, v2, Lcom/sleepycat/b/a/u;->a:I

    .line 3182
    iput-object v2, v0, Lcom/sleepycat/b/a/u;->b:Lcom/sleepycat/b/a/u;

    move-object v0, v2

    .line 3183
    goto :goto_3
.end method

.method public final a()[J
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 111
    iget v0, p0, Lcom/sleepycat/b/a/t;->d:I

    new-array v4, v0, [J

    .line 114
    iget-object v0, p0, Lcom/sleepycat/b/a/t;->a:Lcom/sleepycat/b/a/u;

    move-object v3, v0

    move v0, v1

    :goto_0
    if-eqz v3, :cond_1

    move v2, v0

    move v0, v1

    .line 3212
    :goto_1
    iget v5, v3, Lcom/sleepycat/b/a/u;->a:I

    .line 115
    if-ge v0, v5, :cond_0

    .line 116
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 119
    invoke-virtual {v3, v0}, Lcom/sleepycat/b/a/u;->a(I)J

    move-result-wide v6

    aput-wide v6, v4, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4198
    :cond_0
    iget-object v0, v3, Lcom/sleepycat/b/a/u;->b:Lcom/sleepycat/b/a/u;

    move-object v3, v0

    move v0, v2

    .line 114
    goto :goto_0

    .line 124
    :cond_1
    return-object v4
.end method
