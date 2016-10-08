.class public final Lcom/sleepycat/b/i/c/a;
.super Lcom/sleepycat/b/i/h/a;
.source "BinaryNodeStateProtocol.java"


# static fields
.field public static final a:Lcom/sleepycat/b/i/h/e;

.field public static final b:Lcom/sleepycat/b/i/h/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/sleepycat/b/i/h/e;

    const/4 v1, 0x1

    const-class v2, Lcom/sleepycat/b/i/c/b;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/h/e;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/b/i/c/a;->a:Lcom/sleepycat/b/i/h/e;

    .line 37
    new-instance v0, Lcom/sleepycat/b/i/h/e;

    const/4 v1, 0x2

    const-class v2, Lcom/sleepycat/b/i/c/c;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/i/h/e;-><init>(SLjava/lang/Class;)V

    sput-object v0, Lcom/sleepycat/b/i/c/a;->b:Lcom/sleepycat/b/i/h/e;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/aj;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    invoke-direct {p0, p1, v3, v3, p2}, Lcom/sleepycat/b/i/h/a;-><init>(Lcom/sleepycat/b/i/c/b/x;IILcom/sleepycat/b/c/ad;)V

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sleepycat/b/i/h/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/sleepycat/b/i/c/a;->a:Lcom/sleepycat/b/i/h/e;

    aput-object v2, v0, v1

    sget-object v1, Lcom/sleepycat/b/i/c/a;->b:Lcom/sleepycat/b/i/h/e;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/sleepycat/b/i/c/a;->a([Lcom/sleepycat/b/i/h/e;)V

    .line 49
    return-void
.end method
