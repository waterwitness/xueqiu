.class public final Lcom/sleepycat/b/i/c/b/g;
.super Ljava/lang/Object;
.source "ElectionQuorum.java"


# instance fields
.field volatile a:I

.field private final b:Lcom/sleepycat/b/i/c/aj;

.field private final c:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/g;->b:Lcom/sleepycat/b/i/c/aj;

    .line 51
    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/g;->c:Ljava/util/logging/Logger;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/g;->b:Lcom/sleepycat/b/i/c/aj;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/g;->c:Ljava/util/logging/Logger;

    .line 3392
    iget-object v0, p1, Lcom/sleepycat/b/c/ad;->u:Lcom/sleepycat/b/c/m;

    .line 39
    sget-object v1, Lcom/sleepycat/b/i/c/an;->u:Lcom/sleepycat/b/b/e;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/m;->a(Lcom/sleepycat/b/b/e;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/b/i/c/b/g;->a:I

    .line 41
    iget v0, p0, Lcom/sleepycat/b/i/c/b/g;->a:I

    if-lez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sleepycat/b/i/c/b/g;->c:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Electable group size override set to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sleepycat/b/i/c/b/g;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sleepycat/b/p/w;->b(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/i/p;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 113
    iget v1, p0, Lcom/sleepycat/b/i/c/b/g;->a:I

    if-lez v1, :cond_1

    .line 114
    iget v0, p0, Lcom/sleepycat/b/i/c/b/g;->a:I

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i/p;->a(I)I

    move-result v0

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/g;->b:Lcom/sleepycat/b/i/c/aj;

    .line 3887
    iget-object v2, v1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 4133
    iget-object v1, v2, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 5106
    iget-boolean v1, v1, Lcom/sleepycat/b/i/a/a;->a:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sleepycat/b/i/p;->b:Lcom/sleepycat/b/i/p;

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/i/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    .line 123
    :goto_1
    if-nez v1, :cond_0

    .line 5421
    iget-object v0, v2, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 127
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/t;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/i/p;->a(I)I

    move-result v0

    goto :goto_0

    .line 5106
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
