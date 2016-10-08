.class public final Lcom/sleepycat/b/i/c/b/ao;
.super Ljava/lang/Object;
.source "ReplicaFactory.java"


# static fields
.field private static a:Lcom/sleepycat/b/i/c/b/ap;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/sleepycat/b/i/c/b/ap;->a:Lcom/sleepycat/b/i/c/b/ap;

    sput-object v0, Lcom/sleepycat/b/i/c/b/ao;->a:Lcom/sleepycat/b/i/c/b/ap;

    .line 20
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sleepycat/b/i/c/b/ao;->b:J

    return-void
.end method

.method static synthetic a()J
    .locals 2

    .prologue
    .line 18
    sget-wide v0, Lcom/sleepycat/b/i/c/b/ao;->b:J

    return-wide v0
.end method

.method public static a(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;)Lcom/sleepycat/b/i/c/b/ag;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/sleepycat/b/i/c/b/ao$2;->a:[I

    sget-object v1, Lcom/sleepycat/b/i/c/b/ao;->a:Lcom/sleepycat/b/i/c/b/ap;

    invoke-virtual {v1}, Lcom/sleepycat/b/i/c/b/ap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown type passed to makeReplica: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sleepycat/b/i/c/b/ao;->a:Lcom/sleepycat/b/i/c/b/ap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->c(Ljava/lang/String;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 38
    :pswitch_0
    new-instance v0, Lcom/sleepycat/b/i/c/b/ag;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/i/c/b/ag;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;)V

    .line 46
    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/sleepycat/b/i/c/b/ao$1;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/b/i/c/b/ao$1;-><init>(Lcom/sleepycat/b/i/c/b/aa;Lcom/sleepycat/b/i/c/b/ac;)V

    goto :goto_0

    .line 36
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
