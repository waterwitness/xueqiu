.class abstract enum Lcom/sleepycat/b/p/ad;
.super Ljava/lang/Enum;
.source "PropUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/p/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/p/ad;

.field public static final enum b:Lcom/sleepycat/b/p/ad;

.field public static final enum c:Lcom/sleepycat/b/p/ad;

.field public static final enum d:Lcom/sleepycat/b/p/ad;

.field public static final enum e:Lcom/sleepycat/b/p/ad;

.field public static final enum f:Lcom/sleepycat/b/p/ad;

.field static final g:Ljava/util/concurrent/TimeUnit;

.field private static final synthetic h:[Lcom/sleepycat/b/p/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lcom/sleepycat/b/p/ad$1;

    const-string v1, "NS"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p/ad$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/p/ad;->a:Lcom/sleepycat/b/p/ad;

    .line 214
    new-instance v0, Lcom/sleepycat/b/p/ad$2;

    const-string v1, "US"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p/ad$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/p/ad;->b:Lcom/sleepycat/b/p/ad;

    .line 221
    new-instance v0, Lcom/sleepycat/b/p/ad$3;

    const-string v1, "MS"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p/ad$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/p/ad;->c:Lcom/sleepycat/b/p/ad;

    .line 228
    new-instance v0, Lcom/sleepycat/b/p/ad$4;

    const-string v1, "S"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p/ad$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/p/ad;->d:Lcom/sleepycat/b/p/ad;

    .line 235
    new-instance v0, Lcom/sleepycat/b/p/ad$5;

    const-string v1, "MIN"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p/ad$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/p/ad;->e:Lcom/sleepycat/b/p/ad;

    .line 242
    new-instance v0, Lcom/sleepycat/b/p/ad$6;

    const-string v1, "H"

    invoke-direct {v0, v1}, Lcom/sleepycat/b/p/ad$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/b/p/ad;->f:Lcom/sleepycat/b/p/ad;

    .line 204
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sleepycat/b/p/ad;

    const/4 v1, 0x0

    sget-object v2, Lcom/sleepycat/b/p/ad;->a:Lcom/sleepycat/b/p/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sleepycat/b/p/ad;->b:Lcom/sleepycat/b/p/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sleepycat/b/p/ad;->c:Lcom/sleepycat/b/p/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sleepycat/b/p/ad;->d:Lcom/sleepycat/b/p/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/sleepycat/b/p/ad;->e:Lcom/sleepycat/b/p/ad;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/p/ad;->f:Lcom/sleepycat/b/p/ad;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/p/ad;->h:[Lcom/sleepycat/b/p/ad;

    .line 248
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/sleepycat/b/p/ad;->g:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/b/p/ad;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/p/ad;
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/sleepycat/b/p/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/p/ad;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/p/ad;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/sleepycat/b/p/ad;->h:[Lcom/sleepycat/b/p/ad;

    invoke-virtual {v0}, [Lcom/sleepycat/b/p/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/p/ad;

    return-object v0
.end method


# virtual methods
.method abstract a(J)J
.end method
