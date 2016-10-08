.class final Lcom/sleepycat/b/i/i/e;
.super Lcom/sleepycat/a/a/k;
.source "VLSNBucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Lcom/sleepycat/b/i/i/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 969
    invoke-direct {p0}, Lcom/sleepycat/b/i/i/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 969
    .line 2974
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->i()I

    move-result v0

    .line 2975
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2976
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t expect version diff on_disk="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " source=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 2980
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->b()Z

    move-result v0

    .line 2982
    if-eqz v0, :cond_1

    .line 2983
    invoke-static {p1}, Lcom/sleepycat/b/i/i/a;->a(Lcom/sleepycat/a/a/l;)Lcom/sleepycat/b/i/i/a;

    move-result-object v0

    .line 969
    :goto_0
    return-object v0

    .line 2985
    :cond_1
    new-instance v0, Lcom/sleepycat/b/i/i/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/b/i/i/c;-><init>(Lcom/sleepycat/a/a/l;B)V

    goto :goto_0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 1

    .prologue
    .line 969
    check-cast p1, Lcom/sleepycat/b/i/i/c;

    .line 1992
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->c(I)Lcom/sleepycat/a/a/m;

    .line 1993
    invoke-virtual {p1}, Lcom/sleepycat/b/i/i/c;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sleepycat/a/a/m;->a(Z)Lcom/sleepycat/a/a/m;

    .line 1994
    invoke-virtual {p1, p2}, Lcom/sleepycat/b/i/i/c;->a(Lcom/sleepycat/a/a/m;)V

    .line 969
    return-void
.end method
