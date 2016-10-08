.class public final Lcom/sleepycat/b/k/a/b;
.super Lcom/sleepycat/a/a/k;
.source "LogChangeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Lcom/sleepycat/b/k/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 2072
    new-instance v0, Lcom/sleepycat/b/k/a/a;

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sleepycat/b/k/a/a;-><init>(JJ)V

    .line 67
    return-object v0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 67
    check-cast p1, Lcom/sleepycat/b/k/a/a;

    .line 2051
    iget-wide v0, p1, Lcom/sleepycat/b/k/a/a;->a:J

    .line 1081
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 2055
    iget-wide v0, p1, Lcom/sleepycat/b/k/a/a;->b:J

    .line 1082
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 67
    return-void
.end method
