.class public final Lcom/sleepycat/b/i/c/b/f;
.super Ljava/lang/Object;
.source "DurabilityQuorum.java"


# instance fields
.field public final a:Lcom/sleepycat/b/i/c/aj;

.field public final b:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Lcom/sleepycat/b/i/c/aj;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sleepycat/b/i/c/b/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/p/w;->a(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/c/b/f;->b:Ljava/util/logging/Logger;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/v;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/sleepycat/b/i/c/b/f;->a:Lcom/sleepycat/b/i/c/aj;

    .line 2887
    iget-object v2, v1, Lcom/sleepycat/b/i/c/aj;->am:Lcom/sleepycat/b/i/c/b/aa;

    .line 3202
    iget-object v1, v2, Lcom/sleepycat/b/i/c/b/aa;->y:Lcom/sleepycat/b/i/c/b/g;

    .line 4067
    iget v1, v1, Lcom/sleepycat/b/i/c/b/g;->a:I

    .line 212
    if-lez v1, :cond_1

    .line 217
    invoke-virtual {p1, v1}, Lcom/sleepycat/b/v;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 4133
    :cond_1
    iget-object v1, v2, Lcom/sleepycat/b/i/c/b/aa;->A:Lcom/sleepycat/b/i/a/a;

    .line 5114
    iget-boolean v1, v1, Lcom/sleepycat/b/i/a/a;->a:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sleepycat/b/v;->c:Lcom/sleepycat/b/v;

    invoke-virtual {p1, v1}, Lcom/sleepycat/b/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 221
    :goto_1
    if-nez v1, :cond_0

    .line 5421
    iget-object v0, v2, Lcom/sleepycat/b/i/c/b/aa;->m:Lcom/sleepycat/b/i/c/t;

    .line 225
    invoke-virtual {v0}, Lcom/sleepycat/b/i/c/t;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/v;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 5114
    goto :goto_1
.end method
