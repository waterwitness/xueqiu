.class public final Lcom/sleepycat/a/a/g;
.super Lcom/sleepycat/a/a/k;
.source "LongBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sleepycat/a/a/k;-><init>()V

    return-void
.end method

.method public static a(Lcom/sleepycat/b/m;)J
    .locals 2

    .prologue
    .line 60
    invoke-static {p0}, Lcom/sleepycat/a/a/g;->entryToInput(Lcom/sleepycat/b/m;)Lcom/sleepycat/a/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a()Lcom/sleepycat/a/a/m;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/sleepycat/a/a/m;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/sleepycat/a/a/m;-><init>([B)V

    return-object v0
.end method

.method public static a(JLcom/sleepycat/b/m;)V
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/sleepycat/a/a/g;->a()Lcom/sleepycat/a/a/m;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/a/a/g;->outputToEntry(Lcom/sleepycat/a/a/m;Lcom/sleepycat/b/m;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 29
    .line 2036
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method protected final synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/a/a/m;
    .locals 1

    .prologue
    .line 2048
    invoke-static {}, Lcom/sleepycat/a/a/g;->a()Lcom/sleepycat/a/a/m;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Long;

    .line 1042
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->a(J)Lcom/sleepycat/a/a/m;

    .line 29
    return-void
.end method
