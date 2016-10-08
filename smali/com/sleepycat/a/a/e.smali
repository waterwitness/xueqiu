.class public final Lcom/sleepycat/a/a/e;
.super Lcom/sleepycat/a/a/k;
.source "FloatBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/a/a/k",
        "<",
        "Ljava/lang/Float;",
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


# virtual methods
.method public final synthetic entryToObject(Lcom/sleepycat/a/a/l;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 29
    .line 2234
    invoke-virtual {p1}, Lcom/sleepycat/a/a/l;->g()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 2036
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method protected final synthetic getTupleOutput(Ljava/lang/Object;)Lcom/sleepycat/a/a/m;
    .locals 2

    .prologue
    .line 3081
    new-instance v0, Lcom/sleepycat/a/a/m;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/sleepycat/a/a/m;-><init>([B)V

    .line 29
    return-object v0
.end method

.method public final synthetic objectToEntry(Ljava/lang/Object;Lcom/sleepycat/a/a/m;)V
    .locals 2

    .prologue
    .line 29
    check-cast p1, Ljava/lang/Float;

    .line 1042
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1235
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/a/a/m;->b(J)Lcom/sleepycat/a/a/m;

    .line 29
    return-void
.end method
