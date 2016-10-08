.class public final Lcom/sleepycat/b/az;
.super Ljava/lang/Object;
.source "PreloadStatus.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/sleepycat/b/az;

.field public static final b:Lcom/sleepycat/b/az;

.field public static final c:Lcom/sleepycat/b/az;

.field public static final d:Lcom/sleepycat/b/az;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/sleepycat/b/az;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/az;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/az;->a:Lcom/sleepycat/b/az;

    .line 44
    new-instance v0, Lcom/sleepycat/b/az;

    const-string v1, "FILLED_CACHE"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/az;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/az;->b:Lcom/sleepycat/b/az;

    .line 51
    new-instance v0, Lcom/sleepycat/b/az;

    const-string v1, "EXCEEDED_TIME"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/az;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/az;->c:Lcom/sleepycat/b/az;

    .line 58
    new-instance v0, Lcom/sleepycat/b/az;

    const-string v1, "USER_HALT_REQUEST"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/az;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/az;->d:Lcom/sleepycat/b/az;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sleepycat/b/az;->e:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreloadStatus."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sleepycat/b/az;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
