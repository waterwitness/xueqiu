.class public final Lcom/sleepycat/b/i/h/e;
.super Ljava/lang/Object;
.source "BinaryProtocol.java"


# instance fields
.field final a:S

.field b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/sleepycat/b/i/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sleepycat/b/i/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(SLjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sleepycat/b/i/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-short p1, p0, Lcom/sleepycat/b/i/h/e;->a:S

    .line 352
    iput-object p2, p0, Lcom/sleepycat/b/i/h/e;->c:Ljava/lang/Class;

    .line 353
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/h/e;->d:Ljava/lang/String;

    .line 355
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/nio/ByteBuffer;

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/i/h/e;->b:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    return-void

    .line 358
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0

    .line 360
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/sleepycat/b/aa;->a(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sleepycat/b/i/h/e;->d:Ljava/lang/String;

    return-object v0
.end method
